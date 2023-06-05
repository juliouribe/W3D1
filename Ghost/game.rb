class Game
	attr_reader :dictionary
	def initialize(players, fragment, dictionary)
		@players = ""
		@fragment = ""
		@dictionary = Hash.new(false)

		file = File.open("dictionary.txt", "r")
		file.each_line do |word|
 		 	@dictionary[word] = true
		end
		file.close
	end

	
end

if __FILE__ == $PROGRAM_NAME
	g = Game.new()
	# puts g.dictionary.keys[0, 10]
end