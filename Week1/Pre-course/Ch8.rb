# words = []
# while true
# 	puts 'Please enter a word you like'
# 	word = gets.chomp	
# 	if word.empty?
# 		break
# 	else
# 		puts word
# 		words.push(word)
# 	end
# end
# words = words.sort
# puts 'Sweet!'
# puts words

title = "Table of Contents"
chapters = [["Getting Started",1] ,["Numbers",9],["Letters",13]]

puts title.center(50)
puts
i = 1
chapters.each do |c|
	name = c[0]
	page_number = c[1]
	line = "Chapter " + i.to_s + ": "+name
	pages = "page "+page_number.to_s
	puts line.ljust(30) + pages.rjust(20)
	i = i +1
end