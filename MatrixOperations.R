mat = matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)

scalar.mat = matrix(7,3,3)
diag.mat = diag(c(1,2,3),3,3)
identity.mat = diag(1,3,3)

print(dim(mat))
print(nrow(mat))
print(ncol(mat))
print(length(mat))
print(prod(dim(mat)))

A = matrix(c(1,2,3,4,5,6,7,8,9),3,3,byrow=T)
rownames(A) = c("a","b","c")
colnames(A) = c("d","e","f")

# print the entire matrix
print(A[,])

#print the first two rows and all columns
print(A[1:2,])
print(A[c("a","b"),])

#print all rows and first two columns
print(A[,1:2])
print(A[,c("d","e")])

#print the first row
print(A[1,])

#print the first column
print(A[,1])

#print the last row
print(A[nrow(A),])

#print the last column
print(A[,ncol(A)])

#access everything except the second column
print(A[,-2])

#access everything except the second row
print(A[-2,])

#access the sub-matrix containing the first two rows and all columns
print(A[1:2,1:3])
print(A[1:2,])

#access the sub-matrix containing rows 1 and 3
print(A[c(1,3),])

#matrix concatenation
mat1 = matrix(10:12,1,3,byrow=T)
mat3 = matrix(13:15,3,1)

mat2 = rbind(mat,mat1)
mat2 = cbind(mat,mat3)

#matrix operations
a = matrix(1:9,nrow=3,ncol=3,byrow=T)
b = matrix(1:9,nrow=3,ncol=3,byrow=T)

#matrix addition
print(a+b) 

#matrix subtraction
print(a-b)

#element by element multiplication
print(a*b)

#matrix multiplication
print(a%*%b)

#element by element division
print(a/b)
