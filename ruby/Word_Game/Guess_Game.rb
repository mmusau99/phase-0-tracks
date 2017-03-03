=begin
  
My class would initialize a variable that would match the word of the first user. Then after the word is processed
The second player would guess a letter per turn. the guess would parse through the array and see if the letter matched
one of the letters in the array. if the guess was correct, a message would be displayed congratulating the player 
and the status of that word would be posted. I'm not yet sure to the extent of how much I should punish errors. 
maybe 4 mistakes and the other player wins, but ocourse if i do that there needs to be a word length limit. 
false guesses would also need to return a message with an incorrect statement and the status of the word as well. 


Need to use STDIN.noecho(&:gets).chomp to hide the word at the beginning of implementation later
  
=end
class Word_game
  attr_reader :selected_word,:guess_count, :correct_count,:incorrect_count,:saved_guessing_word
  
  def initialize
  @incorrect_count = 0
    @correct_count = 0
    @guess_count = 0
    
  end
  def word_guess(word)
  @selected_word = word
  end
  
  def increment_guess_count
  @guess_count+=1
  end
  def increment_correct_count
    @correct_count+=1
  end
  def increment_incorrect_count
    @incorrect_count+=1
  end
  def saving_guessing_word(word)
    @saved_guessing_word = word
    
    
    
  end
  
end
word_game_counter = 0
player_word = nil
Player_1 = Word_game.new

  puts "What word would you like the other player to guess."
  require 'io/console'
  player_word = STDIN.noecho(&:gets).chom
  player_word.upcase!
  until Player_1.guess_count == player_word.length
    if player_word.length > 8
    puts "The word #{player_word} is longer than 8 characters. Please try again"
    end
  Player_1.word_guess(player_word)
 
  puts "Next player please guess a letter of the word "
  require'io/console'
  next_player_guess = gets.chomp
  next_player_guess.capitalize!
  
  if next_player_guess.length == 1
      if Player_1.selected_word.include?(next_player_guess)
      guessing_word = Player_1.selected_word
      index_of_letter = guessing_word.index(next_player_guess)
      guessing_word = Player_1.selected_word.split('').map!{|letter| letter = '_' }
        
    
    
      guessing_word[index_of_letter] = next_player_guess
      
      puts "#{guessing_word.join(" ")} is within the word"
      
      Player_1.increment_guess_count
       Player_1.increment_correct_count
        if Player_1.correct_count == player_word.length
          puts "Congratulations you guessed the word #{Player_1.selected_word}!"
          break;
        end
      else
      puts "Sorry try again "
      Player_1.increment_guess_count
      Player_1.increment_incorrect_count
     
      puts "That is mistake number #{Player_1.incorrect_count}"
      puts
      end
  else
      puts "Sorry try again  "
      
  end
  if Player_1.guess_count == player_word.length
    puts "Muhahahahahhaha you didn't get it right !?!!??!"
  end
end
