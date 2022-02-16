# You are given a hash in which the key is a student’s name and the value is the student’s 
# total marks in an exam. Suppose anyone receiving more than 599 (i.e., 600 or more) is 
# placed in the first division. Write a program to print the name and the marks of each 
# student, in a nicely formatted manner, and include ‘First Division’ in the result if he/she 
# achieved first division.
# e.g given {"Abani Sen" => 650, "Dora Pridle" => 573}
# It should print something like this:
# Abani Sen : Marks obtained 650 : First Division
# Dora Pridle : Marks obtained 573
# Use at least one iterator in the solution.
h = {
  "Abani Sen" => 650,
  "Dora Pridle" => 573,
  "Sana Chowdhury" => 824,
  "Pritish Panda" => 732
  }
  h.each { |k, v|
    str = ''
    str = ' : First Division' if v > 599
    puts "#{k} : Marks obtained #{v}#{str}"
   }