def StringChallenge(str)
  s = str.split('.')
  s_1 = s[0].split('')
  s_2 = s[1].split('')
  s_3 = s[2].split('')
  # 1.st condition
  a = s_1[0].to_i+s_1[1].to_i+s_1[2].to_i
  # 2.nd condition
  b = s_2[0].to_i+s_2[1].to_i+s_2[2].to_i
  # 3.rd condition
  a_1 = s_1[0].to_i < s_1[2].to_i && s_1[1].to_i < s_1[2].to_i
  b_1 = s_2[0].to_i < s_2[2].to_i && s_2[1].to_i < s_2[2].to_i
  c_1 = s_3[0].to_i < s_3[2].to_i && s_3[1].to_i < s_3[2].to_i
  # Checking all conditions
  if  a.to_i.even? && b.to_i.odd? && a_1 && b_1 && c_1
    return true
  else
    return false
  end
end
puts StringChallenge('11.124.667')