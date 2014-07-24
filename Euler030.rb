#notice for a 7 digit number, 7*9^5 = 413,343 which only has 6 digits.  So one upper bound is 1,000,000

limit = 1000000
same_sum = []

i=2
while i<limit
	sum=0
	i.to_s.split("").map!{|n| n.to_i}.each{|k| sum+=k**5}
	if sum == i
		same_sum<<i
	end
	i+=1
end
puts same_sum.inject(:+)