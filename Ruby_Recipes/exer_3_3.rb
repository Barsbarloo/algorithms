# Exercise 3.3
# Find the sum of all integers from 1 to 100 (excluding 100), which is either divisible by 3 or 
# divisible by 5, but not by both.
sum = 0
for i in 1...100
  sum = sum + i if ((i % 3) == 0 || (i % 5) == 0)
end
puts sum
# books solution
sum = 0
for i in 1...100
 sum += i if ((i % 15) > 0) and ((i % 3) == 0 || (i % 5) == 0)
end
puts sum
s = 15 % 4
puts s