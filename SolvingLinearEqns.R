# Three cases exists
# Case 1. m = n
# Case 2. m > n
# Case 3. m < n

library(pracma)
library(reshape2)
library(reshape)
library(MASS)

# Example 1. 
# x1 + 3x2 = 7 
# 2x1 + 4x2 = 10
# m = n
# det(a) != 0 (all rows / columns are linearly independent)
# Rank(a)= 2, A is full rank


a = matrix(c(1,3,2,4),2,2,T)
b = matrix(c(7,10),2)
ans = inv(a) %*% b

# Example 2.
# x1 = 1
# 2x1 = -0.5
# 3x1 + x2 = 5
# m = 3, n = 2, m < n 
# x1 = 1 and 2x1 = -0.5 are inconsistent
# Minimize Ax-b
# x = inv((t(a).a)).t(a).b

a = matrix(c(1,0,2,0,3,1),3,2,T)
b = matrix(c(1,-0.5,5),3,1,F)
ans = inv(t(a)%*%a)%*%t(a)%*%b


# Example 3.
# x1 = 1
# 2x1 = 2
# 3x1 + x2 = 5
# m = 3, n = 2, m < n
# Minimize Ax-b
# x = inv((t(a).a)).t(a).b
a = matrix(c(1,0,2,0,3,1),3,2,T)
b = matrix(c(1,2,5),3,1,F)
ans = inv(t(a)%*%a)%*%t(a)%*%b
ans = ginv(a)%*%b
