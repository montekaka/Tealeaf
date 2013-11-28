#Question 2
#Same as above, but only print out values greater than 5.

dummy = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

dummy.each do |d|
	if d > 5
		puts d
	end
end