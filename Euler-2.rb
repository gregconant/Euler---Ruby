# Problem 2
# 19 October 2001

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
# find the sum of the even-valued terms.

def sum_terms(nums, evens_only)
  sum = 0
  nums.each do |num|
    if(evens_only)
      sum = sum + num if num % 2 == 0
    else
      sum = sum + num
    end
  end
  sum
end
def fib(nums_used, max_terms, max_number, evens_only)
  result = 0
  num_count = nums_used.count
  if(nums_used.size == 1)
    result = nums_used.at(0)
  elsif(nums_used.size == 0)
    result = 0
  else
    #print "initial terms: "
    #nums_used.each do |num|
    #  print num, ","
    #end
    #puts ""
    #print "nums_used size: ", nums_used.size, "\n"
    #print "max_terms: ", max_terms, "\n"
    # get sum of terms so far
    result = sum_terms(nums_used, evens_only)
    #print "sum so far: " << result.to_s << "\n"
    while (num_count < max_terms && result < max_number) do

      value1 = nums_used[0]
      value2 = nums_used[1]
      nums_used[0] = value2
      nums_used[1] = value1 + value2
      print nums_used[0], " ", nums_used[1]
      new_sum = nums_used[0] + nums_used[1]
      #print "  new_sum: " << new_sum.to_s << "\n"
      if evens_only
        result = nums_used[1] % 2 == 0 ? result + nums_used[1] : result
      else
        result += nums_used[1]
      end
      num_count +=1
      #print "  sum of first ", num_count , " terms: ", result, "\n"

    end
  end
  print "DONE: evens_only: ", evens_only, "\n"
  result
end


print fib [1,2], 9999999, 4000000, true
# answer: 4613732 - GMC 20110516