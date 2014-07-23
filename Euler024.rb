def lexy(array)
	permutations = array.permutation.to_a

	puts permutations[999999].join.to_s
end
lexy((0..9).to_a)