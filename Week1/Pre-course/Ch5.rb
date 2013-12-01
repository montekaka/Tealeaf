#Full name greeting. Write a program that asks for a person’s first name, 
#then middle, and then last. 
#Finally, it should greet the person using their full name.

puts "Hello there, and what\'s your first name?"
first_name = gets.chomp
puts "Hello there, and what\'s your middle name?"
middle_name = gets.chomp
puts "Hello there, and what\'s your last name?"
last_name = gets.chomp
puts "Hi, " + first_name + ' '+middle_name+' '+last_name

#Bigger, better favorite number. 
# Write a program that asks for a person’s favorite number. 
# Have your program add 1 to the number, 
# and then suggest the result as a bigger and better favorite number. 
# (Do be tactful about it, though.)
puts "What\'s your favor number?"
favor_number = gets.chomp.to_i + 1
puts "Bigger and better favorite number "+favor_number.to_s 
