require_relative 'human'
class Wizard < Human
	def initialize
		@health = 50
		@intelligence = 25
	end

	def heal
		if @health != 50
			@health += 10 
			p "Wizards health is #{@health}"
		else
			p "Wizard is at full health"
		end
	end


	def fireball(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -= 20
			p "Apponants health is at #{obj.health}%"
			return self
		else
			p "Who are you attacking?"
		end
	end
end
wizard = Wizard.new
wizard2 = Wizard.new
wizard.fireball(wizard2)