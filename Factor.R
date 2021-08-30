my.df = data.frame(
  "Name"=c("Aniket","Akshay","Kartik"),
  "Language"=c("Java","CPP","R"),
  "Age"=c(19,20,19),
  stringsAsFactors = T
)

my.df[1,3] = 19
my.df[3,2] = "Python"

print(my.df)