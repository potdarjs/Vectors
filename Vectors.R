# Vector .
# it is Unidimensional dataset

x <- c(1,2,4)                #The c stands for concatenate."<-" is called assignment operator
q <- c(x,x,8)
x <- c(2:19)                 #':' produces a vector consisting of a range of numbers (integers)
x <- seq(from=12,to=30,by=3) # A generalization of : is the seq() (or sequence) function, which generates a sequence in arithmetic progression
x <- seq(from=1.1,to=2,length=10) # The spacing can be a noninteger value, too, say 0.1.
x <- rep(8,4)                # Repeating Vector Constants with rep()
x <- rep(c(5,12,13),3)
x <- rep(c(5,12,13),each=3)
x <- rep(1:3,2)
x <- c("abc", "xyz", "MH", "AP")        # type character
x <- c("TRUE", "FALSE", "TRUE", "TRUE") # Logical vector
x <- c(2+3i, 4+5i)                      # complex
x <- c(12.5,13.1, 15.4)                 # Numeric

z <- 0:9
digits <- as.character(z)   # converting as character
d <- as.integer(digits)     # converting as numeric


# ':' produces integers while 'c()' produces floating-point numbers.

x             #display / print x
x[3]          #Individual elements of a vector are accessed via [ ]. Here's how we can print out the third element of x. 3 here is called index

x[2:3]        #subsetting of 2nd and 3rd element of the vector
mean(x)       #print mean of x
sd(x)         #print std deviation of x
 
y <- mean(x)  #save the computed mean in a variable. '<-'is assignment operator
y

Nile          #One of the data sets is called Nile and contains data on the flow of the Nile River.
mean(Nile)    #print mean of Nile dataset
sd(Nile)      #print std deviation of Nile dataset
hist(Nile)    #histogram of Nile

x1<-c(2.5,1.4,6.3,4.6,9.0)   # Numeric Vector
class(x1)                    # class of vector
mode(x1)                     # Mode of Vector
length(x1)                   # Number of elements in vector
x2<-c(TRUE,FALSE,TRUE,FALSE,FALSE)  # logical vector
class(x2)
mode(x2)
length(x2)
x3<-c("DataMining","Statistics","Analytics","Projects","MachineLearning") # character vector
class(x3)
length(x3)

# Adding and Deleting Vector Elements:you'll need to reassign the vector
x <- c(88,5,12,13)
x <- c(x[1:3],168,x[4]) # insert 168 before the 13
x

# Vector Arithmetic and Logical Operations
# the operation will be applied element-wise
x <- c(1,2,4)
x + c(5,0,-1)  # addition is done element by element.
x * c(5,0,-1)  # multiplication is done element by element.
x / c(5,4,-1)  # division is done element by element.
x %% c(5,4,-1) # remainder is done element by element

# Recycling
# When applying an operation to two vectors that requires them to be the
# same length, R automatically recycles, or repeats, the shorter one, until it is
# long enough to match the longer one. Here is an example
c(1,2,4) + c(6,0,9,20,22)
# The shorter vector was recycled, so the operation was taken to be as c(1,2,4,1,2) + c(6,0,9,20,22)

# Vector Indexing / subvector

y <- c(1.2,3.9,0.4,0.12)
y[2:3]    # extractelements 2 and 3 of y ; Indexing
y[c(1,3)] # extract elements 1 and 3 of y ; subvector

v <- 3:4
y[v]

x <- c(4,2,17,5)
y <- x[c(1,1,3)]
y

z <- c(5,12,13)
z[-1]                 # exclude element 1.Negative subscripts mean that we want to exclude the given elements in
z[-1:-2]              # exclude elements 1 through 2
z[1:(length(z)-1)]    # we wish to pick up all elements of a vector z except for the last. This code will do that
z[-length(z)]         # we wish to pick up all elements of a vector z except for the last. This code will also do that

# The any() and all() functions report whether any or all of their arguments are TRUE.
x <- 1:10
any(x > 8)
all(x > 8)

# Suppose we have a function f() that we wish to apply to all elements of a vectorx. 
# In many cases, we can accomplish this by simply calling f() on x itself

# One of the most effective ways to achieve speed in R code is to use operations
# that are vectorized, meaning that a function applied to a vector is actually
# applied individually to each element.

# Vector In, Vector Out
# R function uses vectorized operations, it, too, is vectorized, enabling a potential speedup
u <- c(5,2,8)
v <- c(1,3,9)
u > v
w <- function(x) return(x+1)
w(u)    # Here, w() uses +, which is vectorized, so w() is vectorized as well

sqrt(1:9) # transcendental functions-square roots, logs, trig functions, and so on-are vectorized
y <- c(1.2,3.9,0.4)
z <- round(y)  #  applies to many other built-in R functions

f <- function(x,c) return((x+c)^2) # where x is vector and c is any number. see in following examples
f(1:3,0)       # output is vector
f(1:3,1)       # output is vector
f(1:3,1:3)     # output is vector

# NA and NULL Values
#In statistical data sets, we often encounter missing data, which we represent
#in R with the value NA. NULL, on the other hand, represents that
#the value in question simply doesn't exist, rather than being existent but unknown

x <- c(88,NA,12,168,13) # we can instruct the function to skip over any missing values, or NAs
mean(x)                 # refused to calculate, as one value in x was NA
mean(x,na.rm=T)         # removing NAs

x <- c(88,NULL,12,168,13)
mean(x)                 # R automatically skipped over the NULL value
v <- NA
length(v)


# One use of NULL is to build up vectors in loops, in which each iteration adds another element to the vector
# build up a vector of the even numbers in 1:10
z <- NULL
for (i in 1:10) if (i %%2 == 0) z <- c(z,i)
z
u <- NULL            
length(u)               # NULL values really are counted as nonexistent

# Filetring
# This allows us to extract a vector's elements that satisfy certain conditions.

# Generating Filtering Indices
z <- c(5,2,-3,8)
z*z > 8           # gives us a vector of Boolean values!
w <- z[z*z > 8]   # extract from z all its elements whose squares were greater than 8 and then assign that subvector to w
w

# we will use the results to extract from another vector, y, instead of extracting from z
z <- c(5,2,-3,8)
j <- z*z > 8
j
y <- c(1,2,30,5)
y[j]
y[z*z > 8]        # we can write in this way also

x <- c(1,3,8,2,20)
x[x > 3] <- 0     # to replace all elements larger than a 3 with a  in vector x
x

# Filtering with the subset() Function
# Filtering can also be done with the subset() function
x <- c(6,1:3,NA,12)
x
x[x > 5]
subset(x,x > 5)    # the difference between using this function and ordinary filtering lies in the manner in which NA values are handled

# The Selection Function which()
# if we may just want to find the positions within vector at which the condition occurs. We can do this using which(), as follows:
z <- c(5,2,-3,8)
which(z*z > 8)     # output wil be the index
first1a <- function(x) return(which(x == 1)[1]) # location within a vector at which the first occurrence of some condition holds
first1a(x)

# A Vectorized if-then-else: The ifelse() Function
# The form is as < ifelse(b,u,v) > where b is a Boolean vector, and u and v are vectors
# The return value is itself a vector; element i is u[i] if b[i] is true, or v[i] if b[i] is false.

x <- 1:10
y <- ifelse(x %% 2 == 0,5,12) # %% is the mod operator. we wish to produce a vector in which there is a 5 wherever x is even or a 12 wherever x is odd.
y

x <- c(5,2,9,12)
ifelse(x > 6,2*x,3*x) # return a vector consisting of the elements of x, either multiplied by 2 or 3, depending on whether the element is greater than 6.

# A Measure of Association using ifelse
# Consider vectors x and y, which are time series, say for measurements
# of air temperature and pressure collected once each hour. 
# We'll define our measure of association between them to be the fraction of the time x and y 
# increase or decrease together-that is, the proportion of i for which
# y[i+1]-y[i] has the same sign as x[i+1]-x[i]. Here is the code:

# findud() converts vector v to 1s, 0s, representing an element
# increasing or not, relative to the previous one; output length is 1# less than input

findud <- function(v) {
vud <- v[-1] - v[-length(v)]
return(ifelse(vud > 0,1,-1))
}

udcorr <- function(x,y) {
ud <- lapply(list(x,y),findud)
return(mean(ud[[1]] == ud[[2]]))
}

x <- c(5, 12, 13, 3, 6, 0, 1, 15, 16, 8, 88)
y <- c(4, 2, 3, 23, 6, 10, 11, 12, 6, 3, 2)
udcorr(x,y)

# Due to the vector nature of the arguments, you can nest ifelse() operations
g <- c("M","F", "F", "I", "M", "M", "F")
ifelse(g == "M",1,ifelse(g == "F",2,3))

# Suppose we wish to form subgroups according to gender. We could use which() to find the element numbers corresponding to M, F, and I
m <- which(g == "M")
f <- which(g == "F")
i <- which(g == "I")
m
f
i

z<- c(6,5,-3,7)
which(z*z>9) # 1 2 4; 6*6=36, 5*5=25, 7*7=49
z*z>9 #TRUE  TRUE FALSE  TRUE
# to know the values
B<- z[z*z>9]
B # 6 5 7 

# Testing Vector Equality
# Suppose we wish to test whether two vectors are equal. The naive approach,using ==, won't work
x <- 1:3
y <- c(1,3,4)
x == y

all(x == y)

# Vector Element Names
# The elements of a vector can optionally be given names

x <- c(1,2,4)
names(x)
names(x) <- c("a","b","ab")
names(x)
x
x["b"]           # We can even reference elements of the vector by name
names(x) <- NULL # We can remove the names from a vector by assigning NULL

# If the arguments you pass to c() are of differing modes, they will be reduced to a type that is the lowest common denominator

c(5,2,"abc")     # R chooses to reduce to the latter mode
c(5,2,list(a=1,b=4))    # R considers the list mode to be of lower precedence
c(5,2,c(1.5,6))   # It doesn't occur with R vectors that you can have two-level lists


x<- c(100,50,75,150,200,25)
x
sort(x) # arranged in low to high, 15, 23,...150, 168
rank(x) # lowest is 25, hence 1, highest is 200, hence 6
order(x) # order is DONE ON sorted numbers....25 was first in sort
# but, it was positioned in the original data at 6th position, hence 6
# next is 50 in sorting which was located at 2 position in the data
# hence 2; next is 75 in sorting, located at 3 in original data, hence, 3
# next is 100, located at 1 in data, hence, 1, next is 150 in sorted data,
# located at 4 in data, hence 4; last was 200 in sorting which was located
# at 5 position, hence 5

#-----------Pattern matching---
x<- c("apple", "potato", "grape", "10", "blue.flower")
x
grep("a", x) # 1 2 3 [1=apple, 2=potato, 3 = grape]

# for values 
grep("[[:digit:]]", x, value = TRUE) # return 10

letters
LETTERS
which(letters=="k")

sports<-c('football','cricket','basketball','baseball')
popularsports<-c('rugby','cricket','badminton','football','baseball','tennis','basketball')

which(sports %in% popularsports)
sports [which(sports %in% popularsports)]


x<-"R function to concatenate several strings into one string is paste"
y<- 'this is paste function'

paste0(y,x)
paste(y,x)

grep('paste',x)   # finds 'paste' in vector x
grep('paste',y)
