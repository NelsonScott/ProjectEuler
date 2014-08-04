
def findFactors(num)
	factors =[]
	1.upto(num) do |e|
		if (num%e).zero?
			factors<<e
		end
	end
	return factors
end

def isPan?(pair, product)
	
		#Multiplicand, multiplier, and Product
		pair = [pair,product].join
		n = pair.length
		arr = pair.split("").map!{|n| n.to_i}.uniq

		#If there is a repeat digit then clearly not pan
		#we're only intersted in 1-9 pandigital, and no 0's
		if (arr.length != n) || (n != 9) || (arr.include?(0))
			return false
		end

		#Go through the digits up to n
		#If one of them is not present then it's not pandigital
		i=1
		while i < n
			if arr.include?(i)
				i+=1
			else
				#puts "Could not find #{i}"
				return false
			end
		end
	return true
end

upperbound = 9999
n=2
pan = []
while n<upperbound
	f = findFactors(n)
	products = f.product(f).select{|x,y| x*y == n}.map!{|x| x.sort}.uniq
 	products.each do |pair|
 		if isPan?(pair, n)
 			pan<<n
 		end
 	end
 	n+=1
end
puts pan.uniq.inject(:+).to_s




