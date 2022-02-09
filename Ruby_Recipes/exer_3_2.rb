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
# books solution
i= 1
i += 1 until i * i > 1000
puts i-1