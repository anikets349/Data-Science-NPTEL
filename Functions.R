library(pracma)
areaOfCircle = function(radius=1) {
  area = pi * radius ^ 2;
  return (area);
}

areaOfCircle.mimo = function(radius) {
  area = pi * radius ^ 2;
  diameter = 2 * radius;
  circumference = 2 * pi *radius;
  return (list(area,diameter,circumference))
}

sumOfTwo = function(num1=1,num2=1) {
  sum = num1 + num2;
  return (sum)
}

ans = areaOfCircle(5)
print(ans)

print(sumOfTwo())
print(sumOfTwo(10,20))
print(sumOfTwo(num1=10,num2=20))
print(sumOfTwo(num2=100,num1=50))

ans = areaOfCircle.mimo(5)
print(ans[[1]])
print(ans[[2]])
print(ans[[3]])

func = function(x) x^2 + 10

#looping over objects
B = matrix(1:9,3,3,T)

#apply the function over the margin (dimensions) of the array
#lapply is used to apply a function on a list
#mapply can be used to apply the same function to multiple lists

#prints row sum
print(apply(B,1,sum))

#prints column sum
print(apply(B,2,sum))

A = matrix(1:9,3,3)
B = matrix(10:18,3,3)

matrices = list(A,B)
determinant = lapply(matrices,det)

num1 = c(1,2,3,4)
num2 = c(9,10,11,12)

my.list = list(num1,num2)

ans.list = mapply(sumOfTwo,num1,num2)

c = matrix(c(1,2,8,2,9,4,5,6,8,7,3,0,5,6,6,5,5,1,10,5,6,1,0,12,1),5,5,F)
