# Fibbonacci numbers with Recurrsion, function to find the eighth Fibonacci number. 
#Take zeroth and the first Fibonacci number as given
def fibo(n)
  if n == 0
    0
    elsif n == 1
      1
    else
      (n-1)+(n-2)
  end
end
puts fibo (8)