# rb101_109 / small_problems / easy_8 / exercise_1.rb

# Write a method that takes an Array of numbers and then returns the sum of the sums of
# each leading subsequence for that Array. You may assume that the Array always contains
# at least one number.

def sum_of_sums(ary)
  result = []
  sum = 0
  ary.each do |num|
    result << num
    result.each do |num2|
      sum += num2
    end
  end
  puts sum
end

sum_of_sums([3, 5, 2]) # => (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) # => (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) # => 4
sum_of_sums([1, 2, 3, 4, 5]) # => 35
