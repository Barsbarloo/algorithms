# 2nd method
def how_many_items_greater_than(number)
  array = [17, 6, 3, 7, 9, 1]
  count = 0
  for item in array
    if item > number
      count = count + 1
    end
  end
  return count
end

puts how_many_items_greater_than(5)