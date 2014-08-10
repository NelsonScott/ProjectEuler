require 'prime'
def circular?(n)
	arr=n.to_s.split("")
	i=0
	while i<arr.length
		if !arr.rotate(i).join.to_i.prime?
			return false
		end
		i+=1
	end
	return true
end
store =[]
(1..1000000).to_a.each do |num|
	if circular?(num)
		store<<num
	end
end
p store.length