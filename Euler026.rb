require 'prime'
#Lots of great info for this here http://mathworld.wolfram.com/DecimalExpansion.html#eqn5
#Really couldn't figure this out before reading it

def findLongest(limit)
	i=2
	goal = 0
	while i<limit
		if !finite?(i)
			period = findPeriod(i)
			if period > goal
				goal = i
			end
		end
		i+=1
	end
	return goal
end

def finite?(n)
	primes,exponents = n.prime_division.transpose
	primes.each do |val|
		if val != 2 && val!=5
			return false
		end
	end
	return true
end

def findPeriod(n)
	vals = n.prime_division
	n_0 = 1
	
	vals.each do |e|
		if e[0] != 2 && e[0]!=5

			n_0*= (e[0])**(e[1])
		end
	end

	if n_0 != 1
		k = 1
		while (10**k)%n_0 != 1
			k+=1
		end
		return k
	else
		i = 1
		while (10**i)%n != 1
			i+=1
		end
		return i
	end
	return "Could not find for #{n}"
end

puts findLongest(1000)
