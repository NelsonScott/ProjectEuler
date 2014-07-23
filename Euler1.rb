#Project Euler no. 1

#Way to keep track of all multiples of 3 or 5
a =[]
i= 0
while i<1000
	if (i%3 == 0) || (i%5 ==0)
		a.push(i)
	end
	i+=1
end

sum=0
a.each {|element| sum+= element}
puts "The sum is: "+sum.to_s