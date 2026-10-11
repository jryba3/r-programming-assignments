data("UCBAdmissions")
head(UCBAdmissions)
str(UCBAdmissions)
print(UCBAdmissions)
summary(UCBAdmissions)
plot(UCBAdmissions[,,1],
     main = "Department A Admissions",
     xlab = "Decision")

s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

print(s3_obj)
print(s4_obj)
