=begin
  
My class would initialize a variable that would match the word of the first user. Then after the word is processed
The second player would guess a letter per turn. the guess would parse through the array and see if the letter matched
one of the letters in the array. if the guess was correct, a message would be displayed congratulating the player 
and the status of that word would be posted. I'm not yet sure to the extent of how much I should punish errors. 
maybe 4 mistakes and the other player wins, but ocourse if i do that there needs to be a word length limit. 
false guesses would also need to return a message with an incorrect statement and the status of the word as well. 
  
=end
class Word_game
  attr_reader :selected_word 
  
  def initialize
    
    @guess_count = 0
  
  end
  def word_guess(word)
  @selected_word = word
  end
  
  

end

Nike = Word_game.new

puts "What word would you like the other player to guess."
player_word = gets.chomp
  if player_word.length > 8
  puts "The word #{player_word} is longer than 8 characters. Please try again"
  end
Nike.word_guess(player_word)
 
puts "Next player please guess a letter of the word "
next_player_guess = gets.chomp
if next_player_guess.length == 1
    if Nike.selected_word.include?(next_player_guess)
      guessing_word = Nike.selected_word
      index_of_letter = guessing_word.index(next_player_guess)
      guessing_word = Nike.selected_word.split('').map!{|letter| letter = '_' }
      
    
    guessing_word[index_of_letter] = next_player_guess
    puts "#{guessing_word} is within the word"
    end
else
    puts "Sorry try again "
end