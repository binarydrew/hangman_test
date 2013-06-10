require_relative "hangman"

class HangmanRunner

  def self.run 
    @game = Hangman.new()
    while true
    	puts "\nBoard: #{@game.board}\n\n"
	    puts "Guessed letters: #{@game.user_guesses}\n\n"
	    puts "Chances you have left: #{@game.chances}\n\n" 
	    print "Enter your guess: "
	    letter = gets.chomp
	    @game.guess(letter)
	    if @game.win?
	    	puts "\n\nAwesome! You are still alive!\n"
	    	break
	    elsif @game.lost?
	    	puts "\n\nOooops You lost. You are HUNG! The word was #{@game.word}\n"	
	    	break
	    end
	    puts "-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-\n"
    end
  end
end 

HangmanRunner.run