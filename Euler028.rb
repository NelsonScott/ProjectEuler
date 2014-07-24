
def findDiagonals
	diagonals=[]
	increment = 2
	position = 1
	limit = 1001**2+1

	while position<limit
		k=0
		while k<4 && position<limit
			diagonals.push(position)
			k+=1
			position+=increment
		end
		increment = increment + 2
	end

	puts diagonals.inject(:+)
end

findDiagonals