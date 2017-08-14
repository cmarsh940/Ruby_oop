class MathDojo
  # your code here
	attr_accessor :sum

    def initialize
        @sum = 0
    end 

    def add(*args)
        @sum += args.flatten.reduce(:+)
        self
    end

    def subtract(*args)
        @sum -= args.flatten.reduce(:+)
        self
    end
end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).sum # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).sum # => 23.15
puts challenge1
puts challenge2