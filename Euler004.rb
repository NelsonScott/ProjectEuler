def find_3digit_palindromes
	i=0
	k=0
	biggest_so_far = 0

	num1 = 100
	while num1.to_s.length<4
		num2 = 100
		while num2.to_s.length<4
			product = num1*num2
			if is_palindrome?(product) && (product>biggest_so_far)
				biggest_so_far = product
			end
			num2+=1
		end
		num1+=1
	end

	return biggest_so_far
end

def is_palindrome?(num)
	str = num.to_s

	if str == str.reverse
		return true
	else
		return false
	end
end

puts find_3digit_palindromes
