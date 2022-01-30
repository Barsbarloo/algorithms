# Fibbonacci numbers
a = 0
b = 1
for i in 1..10
  c = a + b
  puts c
  a = b
  b = c
end