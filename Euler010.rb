require "./Euler7"

def sumprimes(upperbound)
	i=0
	primes = []
	while i<upperbound
		if isPrime?(i)
			primes<<i
		end
		i+=1
	end
	
	sum=0
	primes.each{|val| sum+=val}
	return sum
end

puts sumprimes(2000000)