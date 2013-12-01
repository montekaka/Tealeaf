#Angry boss. Write an angry boss program that rudely asks what you want.
#Whatever you answer, the angry boss should yell it back to you and then fire you. 
#For example, if you type in I want a raise, it should yell back like this:

# puts 'Boss: What do you want?'
# answer = gets.chomp
# puts 'WHADDAYA MEAN "' + answer.upcase + '"?!? YOU\'RE FIRED!!' 

#Table of Contents
title = 'Table of Contents'
ch_pos = 12
subj_pos = 20
page_pos = 17

ch_1 = 'Chapter 1:'.ljust(ch_pos) + 'Getting Started'.ljust(subj_pos) + 'page  1'.rjust(page_pos)
ch_2 = 'Chapter 2:'.ljust(ch_pos) + 'Numbers'.ljust(subj_pos) + 'page  9'.rjust(page_pos)
ch_3 = 'Chapter 3:'.ljust(ch_pos) + 'Letters'.ljust(subj_pos) + 'page 13'.rjust(page_pos)

puts title.center(ch_pos+subj_pos+page_pos)
puts ch_1
puts ch_2
puts ch_3
