require 'game'
class Player
	attr_reader :name
	def initialize(name)
		@name = name
	end

	def guess(valid_guesses)
		puts self.name + ', please enter a letter: '
		input = gets.chomp
		abc = ('a'..'z')
		# input has to be 1 char long
		# char has to be part of alphabet
		if input.len != 1 or !abc.include?(input)
			puts 'Enter a single letter'
			# find valid substrings for fragment
			# .uniq
			# can guess char that was already guessed
		elsif !valid_guesses.include?(input)
			self.alert_invalid_guess(input)
		else
			input
		end
	end

	def alert_invalid_guess(input)
		puts input + " is not a valid choice."
	end
end
