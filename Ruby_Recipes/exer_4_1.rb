#Given an array of letters and a word as input, write a program to find out whether the 
#word can be built from the letters contained in the array. Any letter can be used up to as 
#many times as it occurs in the array (i.e., if the word needs three letter a’s, then the array 
#should have at least three letter a’s).
#Using the program (/) function, show that for the array 
#['y','z','b','e','a','u','t'] and the word beauty returns true, but 
#['r','o','u','g','h'] and tough returns false
def canformword(arr,word)
 arrword = word.chars
 arrleft = arr
 flag = true
 for i in 0...arrword.size
 ch = arrword[i]
 if !arrleft.include?(ch)
 flag = false
break
 else
 ind = arrleft.index(ch)
arrleft.delete_at(ind)
 end
 end
 if flag
 puts 'can form word'
 else
 puts 'can not form word'
 end
end
canformword(['y','z','b','e','a','u','t'], 'beauty')
canformword(['r','o','u','g','h'], 'tough')