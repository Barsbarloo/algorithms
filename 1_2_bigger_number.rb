#Ruby way solution
def how_many_items_greater_than number, array
  array.count do |item|
    item > 5
  end
end
array = [17, 6, 3, 7, 9, 1]
puts how_many_items_greater_than 5, array