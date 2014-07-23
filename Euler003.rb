def prime_factors(num)
	remaining = num
	factors = []

	while find_factor(remaining)!= remaining
		factor=find_factor(remaining)
		remaining = remaining/factor
		factors.push(factor)
	end
	factors.push(find_factor(remaining))
	return factors.max
end

def find_factor(n)
	i =2
	while i<=n
		if n%i == 0 
			return i
		end
		i+=1
	end

end

puts prime_factors(600851475143)