#You are given the following hash.
#h = {
# "Abani Sen" => 650,
# "Dora Pridle" => 573,
# "Sana Chowdhury" => 824,
# "Pritish Panda" => 732
# }
# Print the name and marks, sorted by marks, with highest marks at the top
h = {
  "Abani Sen" => 650,
  "Dora Pridle" => 573,
  "Sana Chowdhury" => 824,
  "Pritish Panda" => 732
  }
arr = h.invert.sort{|a,b| b<=>a}
arr.each { |x|
  str = ''
  str = ' : First Division' if x[0] > 599
  puts "#{x[1]} : Marks obtained #{x[0]}#{str}"
}