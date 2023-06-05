require 'game'
class Player
	attr_reader :name
	def initialize(name)
		@name = name
	end

	def guess
		puts 'Enter a letter: '
		input = gets.chomp
		# input has to be 1 char long
		# char has to be part of alphabet
		# can guess char that was already guessed
		# find valid substrings for fragment
		# .uniq 
	end
end