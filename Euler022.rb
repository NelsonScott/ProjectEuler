def namesort
	file = File.open("../names.txt")
	contents = file.read
	contents = contents.split(",").sort
	
	total=0
	#not sure why, but apparently the index was off by one.  Weird. 
	contents.each_with_index do |val,index|
		total+=word_value(val, index+1)
	end
	return total
end

def word_value(word,index)
	chars = word.downcase.gsub('"','').split("")
	val=0
	chars.each do |e|
		val+= e.ord-"a".ord+1
	end
	return val*index
end
puts namesort