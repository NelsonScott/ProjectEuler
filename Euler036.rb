def palindrome?(n)
	str_10 = n.to_s
	str_2 = n.to_s(2)

	return (str_2 == str_2.reverse && str_10 == str_10.reverse)
end

palindromes=[]
(1..1000000).to_a.each do |num|
	if palindrome?(num)
		palindromes<<num
	end
end

p palindromes.inject(:+)