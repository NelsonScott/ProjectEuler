#Define starting terms
x_0 = 1
x_1 = 2

a=[]
a.push(x_0)
a.push(x_1)

i=2
next_val=0

ceiling= 4000000
while next_val < ceiling
	next_val = a[i-1]+a[i-2]
	if (next_val<ceiling)
		a.push(next_val)
	i+=1
end
end

#store only the even valued terms 
b = a.select{|ele| ele%2 == 0}

#finally sum the even values
sum=0
b.each{|e| sum+= e}
puts sum