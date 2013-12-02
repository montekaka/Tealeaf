def old_school_roman number
	roman_number = {1000 => "M",500=>"D", 100=>"C", 50=>"L", 10=>"X", 5=>"V", 1=>"I"}
	associated_number = [1000,500,100,50,10,5,1]
	result = ''
	associated_number.each do |i|
		if(i == 1000)
			result = result + roman_number[i] * (number/i)
		else
			result = result + roman_number[i] * (number %associated_number[associated_number.index(i)-1] / i)
		end		
	end
	return result
end

puts(old_school_roman(2013))