Input/Output, String Manipulation, and the plyr Package
================

### Import Assignment 6 Data

``` r
student6 <- read.table(file.choose(), header = TRUE, stringsAsFactors = FALSE)
str(student6)
```

    ## 'data.frame':    20 obs. of  1 variable:
    ##  $ Name.Age.Sex.Grade: chr  "Raul,25,Male,80" "Booker,18,Male,83" "Lauri,21,Female,90" "Leonie,21,Female,91" ...

``` r
student6 <- read.table(file.choose(), header = TRUE, stringsAsFactors = FALSE, sep = ",")
str(student6)
```

    ## 'data.frame':    20 obs. of  4 variables:
    ##  $ Name : chr  "Raul" "Booker" "Lauri" "Leonie" ...
    ##  $ Age  : int  25 18 21 21 22 20 23 24 21 23 ...
    ##  $ Sex  : chr  "Male" "Male" "Female" "Female" ...
    ##  $ Grade: int  80 83 90 91 85 69 91 97 78 81 ...

``` r
library(plyr)

gender_mean <- ddply(
  student6,
  "Sex",
  summarise,
  GradeAverage = mean(Grade, na.rm = TRUE)
)

write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep  = "\t",
  row.names = FALSE
)
```

### Filter Names Containing “i”

``` r
i_students <- subset(
  student6,
  grepl("i", Name, ignore.case = TRUE)
)

write.csv(
  i_students$Name,
  file      = "i_students.csv",
  row.names = FALSE,
  quote     = FALSE
)
```

### Export Filtered Dataset

``` r
write.csv(
  i_students,
  file      = "i_students_full.csv",
  row.names = FALSE
)
```
