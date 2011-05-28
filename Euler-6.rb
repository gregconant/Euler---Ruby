# Problem 6
#The sum of the squares of the first ten natural numbers is,
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,

#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the 
#first ten natural numbers and the square of the sum is 3025  385 = 2640.

#Find the difference between the sum of the 
#squares of the first one hundred natural numbers and the square of the sum.


def sum_of_squares(num_count)
  #print "sum of squares of 1 to ", num_count, "\n"
  sum = 0
  (1..num_count).each do |num|
    sum += num**2
  end
  sum
end

def square_of_sums(num_count)
  #print "square of sums of 1 to ", num_count, "\n"
  sum = 0
  (1..num_count).each do |num|
    sum += num
  end  
  sum**2
end

result = square_of_sums(100) - sum_of_squares(100)
print result
# answer: 25164150 - GMC 20110516