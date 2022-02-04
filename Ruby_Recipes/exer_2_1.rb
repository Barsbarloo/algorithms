infile = File.open 'exer_2_1.txt', 'r'
max = -1
maxln = ''
while (line = infile.gets)
 size = line.chomp.size
 if max < size
 max = size
 maxln = line
 end
end
infile.close
puts maxln
puts max
