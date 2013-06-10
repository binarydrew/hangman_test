class Hangman
	LIST = ["ruby", "variable", "instance", "method"]
  attr_accessor :word, :chances, :board, :list, :guesses, :answer

  def initialize()
    @chances = 8
    @guesses = []
    @word    = LIST.sample
    @board   = set_board(@word)
  end
  
  def user_guesses
  	@guesses.join (' ')
  end
  
  def set_board(word) 
    "_" * @word.length
  end

  def word_has?(letter)
  	@word.include? letter
  end

  def put_letter_on_board(letter)
  	for i in (0..word.length)
      @board[i] = letter if @word[i] == letter
    end
  end

  def wrong_letter(letter)
  	@chances -= 1
    @guesses << letter
  end

  def guess(letter)
    if word_has?(letter)
    	put_letter_on_board(letter)
    else
      wrong_letter(letter) if !@guesses.include? letter
    end
  end

  def win?
    !@board.include?'_'
  end

  def lost?
    @chances == 0
  end
end