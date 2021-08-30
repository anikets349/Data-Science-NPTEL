vec1 = c(1,2,3)
vec2 = c("C","C++","Java")
vec3 = c("Dennis Ritchie","Bjarne Stroustrup","James Gosling")

df = data.frame(vec1,vec2,vec3)
print(df)

# prints all rows and columns (the entire dataframe)
print(df[,])

# prints data of all columns from rows 1 and 2
print(df[1:2,])

#print data of all rows from columns 1 and 2
print(df[,1:2])


df1 = data.frame(
  "Name"=c("Aniket","Rahul","Akshay","Jeet"),
  "USN"=c(189,190,64,120),
  "Age"=c(19,19,20,19)
)

df2 = subset(df1, Name=="Aniket" | Age==19)
print(df2)

# add a new column CGPA to the data frame df1
df1 = cbind(df1, CGPA=c(9.54,9.79,9.63,9.74))
print(df1)

# add a new row to the data frame df1
df1 = rbind(df1,data.frame(Name="Mohit",USN=73,Age=20,CGPA=8.7))
print(df1)

df1 = rbind(df1,data.frame(Name="Kaushik",USN=56,Age=20,CGPA=8.94))
print(df1)

emp.info = data.frame(
  "Id" = c(1,2,3,4),
  "Name" = c("Aniket","Rahul","Kaushik","Akshay"),
  "Age" = c(19,20,21,19)
) 
print(emp.info)

emp.subset = subset(emp.info, Age < 50)

df4 = data.frame(
  "vec1" = c(1,2,3,4),
  "vec2" = c("R","Scilab","Java","C"),
  "vec3" = c("For prototyping","For prototyping","For scaleup","For scaleup"),
  "vec4" = c(10,20,30,40)
)

# 
df5 = df[,!names(df) %in% c("vec3")]
print(df5)

df6 = df[!df$vec1==3,]
print(df6)

