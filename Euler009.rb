def pythag_trip(n)

	a=1
	while a<n
		puts "Current a: #{a}"
		b=1
		while b<n
			puts "Current b: #{b}"
			c = (a**2+b**2)**(0.5)

			if (c.to_i == c) && check_sum(a,b,c.to_i)
				return (a*b*c).to_i
			end
			b+=1
		end
		a+=1
	end
	return "not found"
end

# def check_squares(a,b,c)
# 	puts "The current square: #{c**2}"
# 	if (a**2 + b**2) == c**2
# 		return true
# 	else 
# 		return false
# 	end
# end

def check_sum(a,b,c)
	if (a+b+c) == 1000
		return true
	else 
		return false
	end
end

puts pythag_trip(1000)