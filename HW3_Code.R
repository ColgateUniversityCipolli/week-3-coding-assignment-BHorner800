##########################################
# HW3
##########################################

#########
#Problem 1
#########

#Libraries to load
library(primes)

#generating a prime number list with a max of 95 because we want 
#their products that are less than 100
prime.nums = generate_primes(max = 100)

#list to be filled in later
product.of.primes = c() 


#looping through the products of all the primes we generated
for (num in prime.nums){
  #list of prime products with num
  prime.products = num*prime.nums
  #gets rid of square of num
  prime.products = prime.products[which(prime.products != num*num)]
  #Keep only products <= 100
  prime.products = prime.products[which(prime.products <= 100)]
  #combines them into a list of the unique prime products less than 100
  #sorted to ascending numeric value for ease of viewing
  product.of.primes = sort(union(product.of.primes, prime.products))
}


blake.list = c(6, 10, 14, 15, 21, 
               22, 26, 33, 34, 35, 
               38, 39, 46, 51, 55, 
               57, 58, 62, 65, 69,
               75, 77, 82, 85, 86,
               87, 91, 93, 94, 95)


wrong.num = setdiff(blake.list, product.of.primes)
correction = setdiff(product.of.primes, blake.list)

paste("The wrong number in Blake's list is ", toString(wrong.num), 
      ". The correct number is ", toString(correction), ".", sep = "")

?citation
(citation("primes"))
