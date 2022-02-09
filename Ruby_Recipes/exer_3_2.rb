# My solution
sum = 0
for i in 1..100
  sum = i*i
  if sum > 1000
    break
  end
end
puts i
puts sum