def longest_collatzchain(upperbound)
	k = 1
	goal = nil

	candidate = 0
	while k< upperbound
		cc = collatzchain(k)
		# puts "Collatzchain for #{k}: #{cc}"
		if cc > candidate
			candidate = cc
			goal = k
		end
		k+=1
	end
	return goal
end

def collatzchain(n)
	chain = [n]
	while n!= 1
		if n%2 == 0
			n = n/2
			chain<< n
		else
			n = 3*n+1
			chain<< n
		end
	end
	return chain.length
end
puts longest_collatzchain(1000000)