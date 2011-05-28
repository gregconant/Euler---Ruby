# Problem 1
#05 October 2001

#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.

include Math

def find_sum_basic()
  sum = 0
  (1...10).each do |num|
    print "num: ", num, "\n"
    numMod3 = num % 3
    print "  ", num, "Mod3 = ",  numMod3, "\n"
    numMod5 = num % 5    
    print "  ", num, "Mod5 = ", numMod5, "\n"
    if(numMod3 == 0)
      sum += num
    elsif(numMod5 == 0)
      sum += num
    end
    print "end loop: sum = ", sum, "\n"
  end
  sum
end

def find_sum_of_multiples(divisors, limit)
  sum = 0
  #print "checking ", divisors.each { |divisor| print divisor }, " in ", limit
  (1...limit).each do |numToCheck|
    print "checking ", numToCheck, "...\n"
    (divisors).each do |divisor|
      #print "  checking ", numToCheck, " against divisor ", divisor, "...\n"
      temp = numToCheck % divisor 
      if(temp == 0)
        sum += numToCheck
        print "    found!  ", numToCheck, " / ", divisor, ".  sum increased to ", sum, "\n"
        break
      end
    end
    #print "end loop: sum = ", sum, "\n"
  end
  sum
end

print "total sum: ", find_sum_of_multiples([3,5], 1000)
#print "sum: ", find_sum_basic()
# answer: 233168 - GMC 20110515