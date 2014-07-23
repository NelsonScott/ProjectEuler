

def count_sundays
year = 1901
days_of_week = ['Monday','Tuesday','Wednesday', 'Thursday','Friday','Saturday','Sunday']
months_to_days = {'January'=>31,'February'=>28,'March'=>31,'April'=>30,'May'=>31,'June'=>30,'July'=>31,
			'August'=>31,'September'=>30,'October'=>31,'November'=>30,'December'=>31}
months = months_to_days.keys

#in 1901 jan 1st was a Tuesday
current_day = 'Tuesday'
current_day_index = 1

#in 1998 jan 1st was a Thurs
# current_day = 'Thursday'
# current_day_index = 3

current_month = 'January'
current_month_index = 0

current_year = 1901
# current_year = 1998


total_sundays = 0

	while current_year<2001
		if current_day=='Sunday'
			total_sundays+=1
		end

		if current_month=='February' && leapYear?(current_year)
			current_day_index+= 29
		else
			current_day_index+= months_to_days[current_month]
		end

		current_day_index = current_day_index%7
		current_day = days_of_week[current_day_index]
		# puts "The current day is: #{current_day}"

		current_month_index+=1 
		current_month = months[current_month_index%months.length]

		if current_month == 'January'
			current_year+=1
		end
	end
	puts total_sundays

end
def leapYear?(year)
	n = year.to_s

	if n[2]=='0' && n[3]=='0'
		if year%400 == 0
			return true
		else
			return false
		end
	elsif year%4 ==0
		return true
	else
		return false
	end
end

count_sundays