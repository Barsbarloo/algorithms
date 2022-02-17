#Find factorial
def FirstFactorial(num)
  (1..num).reduce(:*)
 end
 
 # keep this function call here 
 puts FirstFactorial(8)

# second solution
def FirstFactorial(num)
  if num == 1
      return 1
  else
       num * FirstFactorial(num-1)
  end         
end
puts FirstFactorial(4)