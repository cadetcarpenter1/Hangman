require "minitest/autorun"
require_relative "hangman.rb"

class Testhangmanfunctions <Minitest::Test
	
	def test_class_returns_upcase_word
		hangman = Hangman.new("WYaTt")
		assert_equal("WYATT",hangman.name)
	end	
	def test_class_returns_name
		hangman = Hangman.new("WYATT")
		assert_equal(5,hangman.charcount)
	end

    def test_class_returns_five_blanks
	     hangman = Hangman.new("WYATT") 
	     assert_equal(["_","_","_","_","_"],hangman.blank) 	
	end
	def test_class_returns_if_included_in_password
		hangman = Hangman.new("WYATT")
		letter = "Y"
		assert_equal(true,hangman.correct_letter?(letter))
	end
	def test_class_user_guess_is_pushed_into_guessed_array
		hangman = Hangman.new("WYATT")
		hangman.guessed = ["S","A","W","K"]
		letter = "R"
		assert_equal(["S","A","W","K","R"],hangman.update_guessed(letter))
	end
	def test_returns_correct_index_position
		hangman = Hangman.new("WYATT")
		hangman.correct_blank = ["W","_","_","_","_"]
		letter="A"
		hangman.correct_index(letter)
		assert_equal(["W","_","A","_","_"],hangman.correct_blank)
	end
	def test_correct_blank_array_stays_the_same_after_invalid_guess
		hangman = Hangman.new("WYATT")
		letter ="F"
		hangman.correct_index(letter)
		assert_equal(["_","_","_","_","_"],hangman.correct_blank)
	end
	def test_correct_blank_array_stays_the_same_after_invalid_guess_two
		hangman = Hangman.new("WYATT")
		letter ="A"
		hangman.correct_index(letter)
		assert_equal(["_","_","A","_","_"],hangman.correct_blank)
   end	
   	def test_class_if_guess_already_in_array_ornot_returns_false
   		hangman = Hangman.new("wyatt")
   		hangman.guessed = ["p","c","u"]
   		letter = "p"
   		assert_equal(false,hangman.avalible_guess(letter))
    end
	def test_class_see_if_guess_has_been_guessed
   		hangman = Hangman.new("wyatt")
   		hangman.guessed = ["S","W","P"]
   		letter = "O"
   		assert_equal(true,hangman.avalible_guess(letter))
    end
 def test_class_see_if_guess_has_been_guessed_two
   		hangman = Hangman.new("wyatt")
   		hangman.guessed = ["S","W","P"]
   		letter = "S"
   		assert_equal(false,hangman.avalible_guess(letter))
   	end	

   	def test_valid_letter
   		hangman = Hangman.new("WYATT")
   		letter("w")
   		assert_equal(true,hangman.)


	end
	
end 

