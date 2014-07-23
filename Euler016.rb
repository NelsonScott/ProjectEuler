num = 2**1000
num = num.to_s.split("")
sum =0

num.each {|e| sum+=e.to_i}
puts sum