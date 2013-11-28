#6. Get rid of duplicates without specifically removing any one value. 

dummy = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

dummy.push(11)
dummy.unshift(0)
dummy.delete(11)
dummy.push(3)
dummy.uniq!

dummy.each do |d|
	puts d
end

