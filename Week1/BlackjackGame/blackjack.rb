def calculate_total (cards)
	result = 0
	arr = cards.map{|e| e[1]}

	arr.each do |i|
		if i=='A'
			result = result+11
		elsif i == 'J' ||  i == 'Q' ||  i == 'K'
			result = result+10
		else
			result = result + i.to_i
		end
	end
	#correct Aces
	cards.select{|e| e=="A"}.count.times do 
		if result > 21
			result = result - 10
		end
	end

	return result
end
# Start Game
puts "Welcome to Blackjack!"

suits = ['H','D','S','C']
cards = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
deck = suits.product(cards)
deck.shuffle!
# Deal Cards
playercards = []
dealercards = []

playercards << deck.pop 
dealercards << deck.pop
playercards << deck.pop 
dealercards << deck.pop

dealertotal = calculate_total(dealercards)
playertotal = calculate_total(playercards)

# Show cards
puts "Dealer has: #{dealercards[0]} and #{dealercards[1]}, for a total of #{dealertotal}"
puts "You have: #{playercards[0]} and #{playercards[1]}, for a total of #{playertotal}"
puts ""

#player turn
if playertotal == 21
	puts "Congratulations, you hit Blackjack! You win"
	exit
end
while playertotal < 21
	puts "What would you like to do? 1) ht 2) stay"
	hit_or_stay = gets.chomp

	if !['1','2']	.include?(hit_or_stay)
		puts "Erro: you must enter 1 or 2"
		next
	end
	if hit_or_stay == "2"
		puts "You chose to stay."
		break
	end

	#hit
	new_card = deck.pop
	puts "Dealing card to player: #{new_card}"
	playercards << new_card
	playertotal = calculate_total(playercards)
	puts "Your total is now: #{playertotal}"

	if playertotal == 21
		puts "Congratulations, you hit Blackjack! You win"
		exit
	elsif playertotal > 21
		puts "Sorry, it looks like you busted!"
		exit
	end
end

#Dealer turn
if dealertotal == 21
	puts "Sorry, dealer hit Blackjack. You lose."
	exit
end

while dealertotal < 17
	#hit
	new_card = deck.pop
	puts "Dealing new card for dealer: #{new_card}"
	dealercards << new_card
	dealertotal = calculate_total(dealercards)
	puts "Dealer total is now: #{dealertotal}"

	if dealertotal == 21
		puts "Sorry, dealer hit Blackjack. You lose."
		exit
	elsif dealer > 21
		puts "Congratulations, dealer busted! You win!"
	end		
end

#compare hands
puts "Dealer's cards: "
dealercards.each do |card|
	puts "=> #{card}"
end
puts "Your's cards: "
playercards.each do |card|
	puts "=> #{card}"
end
puts ""
if dealertotal > playertotal
	puts "Sorry, dealer won"
elsif dealertotal < playertotal
	puts "Congratulations, you win!"
else
	puts "It's a tie!"
end
exit

