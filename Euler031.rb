ways=0
(0..200).step(200) do |a|
	(a..200).step(100) do |b|
		(b..200).step(50) do |c|
			(c..200).step(20) do |d|
				(d..200).step(10) do |e|
					(e..200).step(5) do |f|
						(f..200).step(2) do |g|
							ways+=1
						end
					end
				end
			end
		end
	end
end
puts ways

	