def Fib(digits)

	prev_f = 1
	next_f = 2
	term_num = 3

	while next_f.to_s.length !=digits
		temp = next_f
		next_f = next_f+prev_f
		prev_f = temp
		term_num+=1
	end

	return term_num
end
puts Fib(1000)
