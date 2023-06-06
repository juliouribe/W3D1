require_relative("player")

class Game
	attr_reader :dictionary

	def initialize(fragment, dictionary)
		@player_1 = Player.new("Player 1")
		@player_2 = Player.new("Player 2")
		@current_player = @player_1
		@fragment = ""
		@dictionary = Hash.new(false)

		file = File.open("dictionary.txt", "r")
		file.each_line do |word|
 		 	@dictionary[word] = true
		end
		file.close
	end

	def play_round
		"""
		0) check substring against dictionary words and find valid letters, valid_guesses
		1) call 'take_turn' to get input
		2) add the letter to fragment
		3) check against the dictionary
		4) next player! updates current player and previous player.
		"""
	end
end

if __FILE__ == $PROGRAM_NAME
	g = Game.new()
	# puts g.dictionary.keys[0, 10]
end
