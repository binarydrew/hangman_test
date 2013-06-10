require 'test/unit'

require_relative 'hangman'

class TestHangman < Test::Unit::TestCase

	  def setup
		@a = Hangman.new
		@a.word = "instance"
		@a.board = "________"
	  end



	  def test_initialize
	  	b = Hangman.new
	  	assert_equal 8, b.chances
	  	assert_equal [], b.guesses
	  	assert_equal (["ruby", "variable", "instance", "method"].include? b.word), true
	  	assert_equal "_"  *  b.word.length, b.board 

	  end

	  def test_guesses
	  	@a.guesses = ["p"]
	  	assert_equal "p", @a.user_guesses
	  end

	  def test_word_has?
	  	assert_equal @a.word_has?("i"), true
	  	assert_equal @a.word_has?("b"), false
	  end

	  
	  def test_guess
	  	@a.guess("i")
	  	assert_equal @a.board, "i_______"

	  	@a.guess("g")
	  	assert_equal @a.board, "i_______"

	  	#assert_equal 7, @a.chances
	  end
  


  end