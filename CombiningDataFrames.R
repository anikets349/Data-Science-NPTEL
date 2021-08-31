library(dplyr)

stud.df = data.frame(
  "Name"=c("Aniket","Akshay","Jeet","Ganesh","Sami","Saish","Kantesh","Shubham"),
  "USN"=c(189,64,120,69,71,99,102,100),
  "Age"=c(19,20,21,20,19,20,21,19)
)

dept.df = data.frame(
  "USN"=c(189,64,120,69,71,99,102,100,107,109,243,303),
  "Dept"=c("CS","CS","ME","CV","AE","IS","EC","EE","IS","CV","CS","EE")
)

df.left_join = left_join(stud.df, dept.df, by="USN")

df.right_join = right_join(stud.df, dept.df, by="USN")

df.full_join = full_join(stud.df, dept.df, by="USN")

df.inner_join = inner_join(stud.df, dept.df, by="USN")

print(stud.df)
print(dept.df)
print(df.left_join)
print(df.right_join)