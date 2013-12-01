#“99 Bottles of Beer on the Wall.” 
#Write a program that prints out the lyrics to that beloved classic, 
#“99 Bottles of Beer on the Wall.”

i = 99
while i>0
if i == 1
	j = "no more"
else
	j = (i-1).to_s
end
puts i.to_s + 'bottles of beer on the wall, '+ i.to_s + ' bottles of beer.
Take one down and pass it around, '+j + ' bottles of beer on the wall.'
i = i - 1
end
puts "No more bottles of beer on the wall, no more bottles of beer. 
 Go to the store and buy some more, 99 bottles of beer on the wall."

#Deaf grandma. Whatever you say to Grandma (whatever you type in), 
#she should respond with this:

i = 0
while true
	speak = gets.chomp
	puts i.to_s
	if speak == 'BYE'
		i = i - 1
	else
		i = 0
	end
	if i >= 3
		puts 'BYE-BYE CUPCAKE!'
		break
	end
	if speak != "SHOUT"	
		puts 'HUH?!  SPEAK UP, SONNY!'
	else
		puts "NO, NOT SINCE "+ (1930+rand(21)).to_s + "!"
	end
end

#Leap Years.

puts "What\'s starting year?"
starting_year = gets.chomp.to_i
puts "What\'s ending year?"
ending_year = gets.chomp.to_i

i = starting_year
while i<ending_year
	if i%400 == 0
		puts i.to_s
	else
		if i%100 == 0
		elsif i%4 == 0
			puts i.to_s
		end
	end
	i = i + 1
end
