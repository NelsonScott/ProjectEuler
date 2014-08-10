require 'prime'
def truncatable?(n)
	j = 0
	n = n.to_s.split("")
	while j<n.length
		if !n[j..n.length].join.to_i.prime?
			return false
		end
		j+=1
	end

	k = n.length-1
	while k>=0
		if !n[0..k].join.to_i.prime?
			return false
		end
		k-=1
	end

	return true
end

limit = 11

i = 11
found = []
while found.length < limit
	if truncatable?(i)
		found<<i
	end
	i+=1
end

p found.inject(:+)