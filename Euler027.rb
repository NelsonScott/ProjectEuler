require 'prime'

def highestnum
	longest_primes = 0
	product = 0

	a= -999
	while a < 1000
		b= -999
		while b < 1000
			cand = countprimes(a,b)
			if cand > longest_primes
				longest_primes = cand
				product = a*b
			end
			b+=1
		end
		a+=1
	end

	return product
end

def countprimes(a,b)
	primes = 0
	n = 0
	while (n*n+a*n+b).prime?
		n+=1
	end

	return n
end
puts highestnum