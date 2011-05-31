# Problem 5
#2520 is the smallest number that can be divided by each of the numbers from 
#1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all 
#of the numbers from 1 to 20?


def find_smallest_num_divisible_by_all(range)
  (1..9999999999).each do |curr|
    success = true
    range.each do |divisor|
      if(curr % divisor != 0)
        success = false
        break
      end
    end
    if success
      return curr
    end
  end
end

puts find_smallest_num_divisible_by_all((1..20))
