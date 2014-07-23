require 'prime'
def find_triangle_num
	k=1
	found = false
	last_triangle = 0

	while !found
		triangle_num = find_triangle(last_triangle, k)
		# puts triangle_num
		number_of_factors= find_factors(triangle_num)
		if number_of_factors>500
		# if k>10
			found = true
			return triangle_num
		end
		last_triangle = triangle_num
		k+=1
	end
end

def find_factors(n)
	arr= n.prime_division
	exponents = []
	arr.each do |e|
		exponents<<(e[1]+1)
	end
	product =1
	exponents.each{|x| product*=x}
	return product
end

def find_triangle(last_triangle, k)
	return last_triangle+k
end

puts find_triangle_num