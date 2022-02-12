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