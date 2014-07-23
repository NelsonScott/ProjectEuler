#First build a dictionary
	@single_digits = {
		0=>'zero',
		1=>'one',
		2=>'two',
		3=>'three',
		4=>'four',
		5=>'five',
		6=>'six',
		7=>'seven',
		8=>'eight',
		9=>'nine'}

	@teens = {
		0=>'ten',
		1=>'eleven',
		2=>'twelve',
		3=>'thirteen',
		4=>'fourteen',
		5=>'fifteen',
		6=>'sixteen',
		7=>'seventeen',
		8=>'eighteen',
		9=>'nineteen'}

	@tens = {
		2=>'twenty',
		3=>'thirty',
		4=>'forty',
		5=>'fifty',
		6=>'sixty',
		7=>'seventy',
		8=>'eighty',
		9=>'ninety',
	}

	@bigger= {
		100=>'hundred',
		1000=>'thousand',
		1000000=>'million'
	}

def numberstowords
	sum=0
	i=1
	while i<=1000
		sum+=count_chars(i)
		i+=1
	end
	puts sum
end

def count_chars(n)
	remaining = n

	num_of_thousands = remaining/1000
	remaining = remaining-1000*(num_of_thousands)

	num_of_hundreds = remaining/100
	remaining = remaining-100*(num_of_hundreds)

	num_of_tens = remaining/10
	remaining = remaining-10*(num_of_tens)

	if remaining == 0
		single_digit = ""
	else
		single_digit = @single_digits[remaining]
	end

	if num_of_tens>1
		tens_digit = @tens[num_of_tens]
	elsif num_of_tens == 1
		tens_digit = @teens[remaining]
		single_digit = ""
	else
		tens_digit = ""
	end

	if num_of_hundreds>1
		hundreds_digit = @single_digits[num_of_hundreds]+" hundred"
	elsif num_of_hundreds==1
		hundreds_digit = "one hundred"
	else
		hundreds_digit = ""
	end

	if num_of_thousands > 1
		thousands_digit = @single_digits[num_of_thousands]+" thousand"
	elsif num_of_thousands == 1
		thousands_digit = "one thousand"
	else
		thousands_digit = ""
	end

	str = ""
	if thousands_digit.length > 0
		str+= thousands_digit
	end
	if hundreds_digit.length>0
		str+= " "+hundreds_digit
	end
	if tens_digit.length>0 && (hundreds_digit.length>0 || thousands_digit.length>0)
		str+=" and "+tens_digit
	elsif tens_digit.length>0
			str+=tens_digit
	end
	if single_digit.length>0 && (tens_digit.length==0 && (hundreds_digit.length>0 || thousands_digit.length>0))
		str+=" and "+single_digit
	elsif single_digit.length>0
		str+=single_digit
	end

	str = str.delete(" ")
	return str.length
end

numberstowords
