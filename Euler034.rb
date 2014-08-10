#I first found 3000000 as an upperbound, but after researching online I found 
#a much better one.  This comment somewhat explains how to find it http://blogs.evergreen.edu/jbolton/blog/2011/09/07/project-euler-34/#comment-93
upperbound=50000
start = Time.now
result = 0

(10..upperbound).to_a.each do |num|
	if num == num.to_s.split("").map{|e| (1..e.to_i).inject(:*) || 1}.inject(:+)
		result+= num
	end
end
finish = Time.now
p result
p "Result took #{finish-start}"

