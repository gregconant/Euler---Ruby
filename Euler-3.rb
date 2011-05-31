# Problem 3
#02 November 2001

#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?


class PrimeFinder
  attr_accessor :primes, :max
  
  def GetPrimesUpTo(max)
    (1...max).each do |num|
      puts "at ", num
    end
    
    
  end
  

  
end

prime = PrimeFinder.new()
prime.GetPrimesUpTo(600851475143)