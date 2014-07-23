def findPrime(num)
	k=2
	i=0

	while i<num
		if isPrime?(k)
			i+=1
			prime = k
		end
		k+=1
	end

	return prime
end

def isPrime?(n)
	if n==0 || n==1
		return false
	end
	
	i=2
	upper_bound = n**(0.5)
	upper_bound = upper_bound.to_i

	while i<= upper_bound
		if n%i == 0
			return false
		end
		i+=1
	end
	return true
end
# puts findPrime(10001)