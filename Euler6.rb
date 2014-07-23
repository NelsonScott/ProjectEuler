def sum_square_diff(natural_numbers)
	return square_of_sum(natural_numbers)-sum_of_squares(natural_numbers)
end

def sum_of_squares(num)
	sum_squares = 1
	i = 2
	while i<= num
		sum_squares+= i*i
		i+=1
	end

	return sum_squares
end

def square_of_sum(n)
	sum =0
	i=1
	while i<=n
		sum+=i
		i+=1
	end
	return sum*sum
end

# puts sum_square_diff(100)

