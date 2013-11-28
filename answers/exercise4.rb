#4. Append "11" to the end of the array. Prepend "0" to the beginning.

dummy = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

dummy.push(11)
dummy.unshift(0)

dummy.each do |d|
	puts d
end