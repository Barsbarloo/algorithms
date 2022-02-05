# Finding palindrome lines
infile = File.open 'exer_2_2.txt', 'r'
while (line = infile.gets)
  x = line.chomp.downcase.gsub(' ', '')
  y = x.reverse
  if x == y
    puts 'A palindrome: ' + line
  else
    puts 'Not a palindrome: ' + line
  end
end
infile.close