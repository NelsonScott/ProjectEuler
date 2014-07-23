def lattices(gridsize)
	points = gridsize+1
	arr = Array.new(points)
	arr.map! { |e| Array.new(points, 1) }

	i=0
	while i< arr.length
		k=0
		while k<arr[0].length
			make_value([i,k], arr)
			k+=1
		end
		i+=1
	end
	
	return arr[20][20]
end

def make_value(location,arr)
	row=location[0]
	col=location[1]
	
	x=row
	y=col
	sum=0

	if (row-1)<0
		# Too far up
		sum = 1
		arr[x][y] = sum
		return
	end

	if (col-1)<0
		 # Too far left
		sum =1
		arr[x][y] = sum
		return
	end

	while col>=0
		sum+=arr[row-1][col]
		col=col-1
	end

	if sum ==0
		sum =1
	end

	#Store the sum in the array, its needed for the other calculations
	arr[x][y] = sum
end
puts lattices(20)