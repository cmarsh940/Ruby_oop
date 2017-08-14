require_relative 'mammal'
class Dog < Mammal
    def walk
        @health-=1
        return self
    end
    def run
        @health -= 10
        return self
    end
    def pet
        @health += 5
        return self
    end
end
dog = Dog.new
p dog.walk.walk.walk.run.run.pet