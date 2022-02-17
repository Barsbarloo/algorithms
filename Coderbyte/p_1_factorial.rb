#Find factorial
def FirstFactorial(num)
  (1..num).reduce(:*)
 end
 
 # keep this function call here 
 puts FirstFactorial(8)