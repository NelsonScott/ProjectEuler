curious_fracts =[]
(10..99).to_a.each do |numerator|
	(numerator..99).to_a.each do |denominator|
		arr1= numerator.to_s.split("").map!{|e| e.to_i}
		arr2= denominator.to_s.split("").map!{|e| e.to_i}
		intersection= arr1 & arr2

		if intersection.length == 1 && intersection[0]!= 0
			common= intersection[0]

			arr1.delete_at(arr1.index(common))
			arr2.delete_at(arr2.index(common))
			top= arr1[0]
			bot= arr2[0]

			if ((numerator.to_f/denominator) == (top.to_f/bot))
				curious_fracts<<Rational(top,bot)
			end
		end
	end
end
p curious_fracts.uniq[1..-1].inject(:*).denominator