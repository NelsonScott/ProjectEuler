combos = []

a=2
while a<101
	b=2
	while b<101
		combos<< a**b
		b+=1
	end
	a+=1
end
puts combos.uniq.length