# For entry into engineering or medicine, when the score is calculated, some of the credit is 
# taken from the marks in the exam discussed earlier. These are the rules:
# •	 up to 500 marks: no credit toward entrance
# •	 501 to 600: 10 credits
# •	 601 to 700: 20 credits
# •	 701 to 800: 40 credits
# •	 801 onward: 70 credits
# Write a program to determine and print the credits each of the students received 
# (based on the hash in Exercise 5.2).
h = {
  "Abani Sen" => 650,
  "Dora Pridle" => 573,
  "Sana Chowdhury" => 824,
  "Pritish Panda" => 732
}
h.map {|k,v|
  case v
  when 0..500
  puts "#{k} : no credit"
  when 501..600
  puts "#{k} : credit : 10"
  when 601..700
  puts "#{k} : credit : 20"
  when 701..800
  puts "#{k} : credit : 40"
  else
  puts "#{k} : credit : 70"
  end
 }
