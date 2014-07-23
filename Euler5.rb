def find_evenly_divisible
	##This takes a while and is kind of brute force, but it does end up working
	#I read another solution online after I did this that shows a better way
	#http://www.mathblog.dk/project-euler-problem-5/
	 
	one_twenty = (1..20).to_a
	candidate = 20
	
	while !check_divisible(candidate, one_twenty)
		puts "Checking #{candidate}"
		candidate+=20
	end

	return candidate
end

def check_divisible(n, range)

	range.each do |num|
		puts "Checking if #{n} is divisible by #{num}"
		if n%num != 0
			return false
		end
	end
	return true
end

puts find_evenly_divisible.to_s