def ask_question question
	while true
		puts question
		answer = gets.chomp.downcase		
		if answer == "yes"
			return true
		elsif answer == "no"
			return false
		else
			puts 'Please answer "Yes" or "No".'
		end			
	end
end

question = ask_question('Do you like it?')
puts question