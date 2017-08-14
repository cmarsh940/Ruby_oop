class Human
	attr_accessor :health, :strength, :stelth, :intelligence
	def initialize
		@health = 100
		@strength = 3 
		@stelth = 3 
		@intelligence = 3 
	end

	def attack(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -= 25
			p "Apponants health is at #{obj.health}%"
			return self
		else
			p "Who are you attacking?"
		end
	end
end
user = Human.new
user2 = Human.new
user.attack(user2)
user2.attack("self")