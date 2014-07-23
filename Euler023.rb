require 'prime'
require 'set'

def abundancy
	#numbers 1-11 are not abundant
	i = 12
	upper_bound = 28123

	abundant_nums = []
	while i < upper_bound
		if findproperfactors(i) > i
			abundant_nums<<i
		end
		i+=1
	end
	
	sums_of_abundant_nums = Set.new
	abundant_nums.each do |num|
		abundant_nums.each do |val|
			sums_of_abundant_nums.add(num+val)
		end
	end

	not_sums_of_abundant = []
	i = 1
	while i<28123
		if !sums_of_abundant_nums.include?(i)
			not_sums_of_abundant<<i
		end
		i+=1
	end
	return not_sums_of_abundant.inject(:+)
end

def findproperfactors(n)
	i = 2
	factors=[]
	factors<<1
	while i<n**(0.5)+1
		if n%i==0
			factors<<i
			factors<<(n/i)
		end
		i+=1
	end
	return factors.uniq.inject(:+)
end

# puts abundancy
puts abundancy