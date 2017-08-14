require_relative 'human'
class Ninja < Human
	def initialize
		@stealth = 175
		@health = 100
	end

	def steal
		if self.health <= 100
			@health += 10 
			p "Ninja's health is #{@health}"
			return self
		else
			p "Ninja is at full health"
			return self
		end
	end


	def get_away
		if @health >= 25
			@health -= 15
			p "Ninja ran away with its health at #{@health}%"
			return self
		else
			p "Ninja will die if you run away"
			return self
		end
	end
end
ninja = Ninja.new
ninja.get_away