Assignment 4 Plots
================

``` r
boxplot(
  BloodPressure ~ FirstAssess,
  data = df_hosp,
  names = c("Good","Bad"),
  ylab = "Blood Pressure",
  main = "BP by First MD Assessment"
)
```

![](assignment_04_files/figure-gfm/Side-by-sides-1.png)<!-- -->

``` r
boxplot(
  BloodPressure ~ SecondAssess,
  data = df_hosp,
  names = c("Low","High"),
  ylab = "Blood Pressure",
  main = "BP by Second MD Assessment"
)
```

![](assignment_04_files/figure-gfm/Side-by-sides-2.png)<!-- -->

``` r
boxplot(
  BloodPressure ~ FinalDecision,
  data = df_hosp,
  names = c("Low","High"),
  ylab = "Blood Pressure",
  main = "BP by Final Decision"
)
```

![](assignment_04_files/figure-gfm/Side-by-sides-3.png)<!-- -->

``` r
hist(
  df_hosp$Frequency,
  breaks = seq(0, 1, by = .1),
  xlab = "Visit Frequency",
  main = "Histogram of Visit Frequency"
)
```

![](assignment_04_files/figure-gfm/Histograms-1.png)<!-- -->

``` r
hist(
  df_hosp$BloodPressure,
  breaks = 8,
  xlab = "Blood Pressure",
  main = "Histogram of Blood Pressure"
)
```

![](assignment_04_files/figure-gfm/Histograms-2.png)<!-- -->
