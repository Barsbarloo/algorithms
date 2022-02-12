# Suppose there are two text files that report train timing (in a 24-hour format). The first 
# report provides arrival times to a station (on a particular day), and the second report 
# provides departure times. The file contents are as follows.
# arrtime.txt
# deptime.txt
# The data is space separated. The first column is the train number (train id) and the 
# second column is the time. The data is not ordered by train id.
# Note that the data may have an anomaly, such as the arrival may be later than the 
# departure, and also one train id may be found in one file, but not another.
# The exercise is to programmatically find the amount of time (in minutes) that each 
# train stays in the station (when possible), and to flag the trains that have data anomalies.
def timeinmin(tm)
  a = tm.split(':')
  a[0].to_i * 60 + a[1].to_i
 end
 def gethashfromfile(filename)
  thefile = File.open(filename,'r')
  h = Hash.new
  while (line = thefile.gets)
  x = line.chomp.split(/\s+/)
  h[x[0]] = timeinmin(x[1])
  end
  thefile.close
  h
 end
 h1 = gethashfromfile('exer_4_2_1.txt')
 h2 = gethashfromfile('exer_4_2_2.txt')
 k1 = h1.keys
 k2 = h2.keys
 kcommon = k1 & k2
 knotinboth = (k1 - kcommon) | (k2 - kcommon)
 arr = kcommon.to_a
 for i in 0...arr.size
  stay = h2[arr[i]] - h1[arr[i]]
  if stay < 0
  puts arr[i] + ': data issue'
  else
  puts arr[i] + ': stay ' + stay.to_s + ' minutes'
  end
 end
 arr2 = knotinboth.to_a
 for i in 0...arr2.size
  puts arr2[i] + ': data issue'
 end 