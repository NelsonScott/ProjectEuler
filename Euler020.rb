def sum_of_digits(n)
	f = factorial(n)
	arr = f.to_s.split("")
	arr.map! { |e| e.to_i  }
	result = 0
	arr.each {|val| result+=val}
	return result
end

def factorial(x)
	sum=1
	while x>0
		sum*=x
		x=x-1
	end
	return sum
end

puts sum_of_digits(100)