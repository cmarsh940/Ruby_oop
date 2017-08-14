require_relative 'human'
class Samurai < Human
	@@how_many = 0
	def initialize
		@health = 200
		@@how_many += 1
	end
	def death_blow(obj)
		if obj.class.ancestors.include?(Human)
			obj.health = 0
			p "Samurai killed #{obj}. #{obj}'s health is at #{obj.health}% "
			return self
		else
			p "Who are you attacking?"
		end
	end


	def meditate
		@health = 200
		p "Samurai is at #{@health}%"
		return self
	end

	def how_many
		@@how_many
		p "Total number of Samurai's #{@@how_many}"
	end

end
sam = Samurai.new
sam2 = Samurai.new
sam.death_blow(sam2)