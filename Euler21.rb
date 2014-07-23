require 'set'
def proper_divisors(n)
	i=1
	divisiors = []
	while i<n
		if n%i == 0 
			divisiors<<i
		end
		i+=1
	end
	return divisiors.inject(:+)
end

def compare_sums
	i=2
	#First store numbers=>sum
	all={}
	all.store(1,0)

	while i<10000
		all.store(i, proper_divisors(i))
		i+=1
	end
	amiable=Set.new

	k=0
	while k< all.length
		val = all[k]
		if (all[val] == k) && (val!=k)
			amiable.add(k)
			amiable.add(val)
		end
		k+=1
	end
	puts amiable.inject(:+)
end
compare_sums
