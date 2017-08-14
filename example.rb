# class CodingDojo 
#   @@no_of_branches = 0
#   def initialize(id, name, address) 
#     @branch_id = id 
#     @branch_name = name 
#     @branch_address = address 
#     @@no_of_branches += 1 
#     puts "Created branch #{@@no_of_branches}"
#   end
#   def hello 
#     puts "Hello CodingDojo!"
#   end
#   def display_all
#     puts "Branch ID: #{@branch_id}"
#     puts "Branch Name: #{@branch_name}" 
#     puts "Branch Address: #{@branch_address}"
#   end 
# end 
# # now using above class to create objects 
# branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA") 
# branch.display_all 
# branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA") 
# branch2.display_all


#   **************** self *****************

# class Mammal
#   def initialize
#     puts "I am alive"
#     self
#   end
#   def breath  
#     puts "Inhale and exhale"
#     self
#   end
  
#   def who_am_i
#     puts self
#     self
#   end
# end
# my_mammal = Mammal.new.who_am_i.breath



# **************** visibility & inheritance(Public, Protected, Private) *****************

# **************** Public *****************
# (public - methods that can be called within the class, subclasses and instances without restriction.)




class Mammal
  def breath  
    puts "Inhale and exhale"
  end
  
  def eat
    puts "Yum yum yum"
  end
end
class Human < Mammal # Human inherits from Mammal
  def subclass_method
    breath
  end
  def another_method
    self.eat
  end
end
person = Human.new
person.subclass_method
person.another_method


# **************** Protected *****************
# (protected - methods that can only be called within the class and subclasses either explicitly or implicitly)




class Mammal
  # previous code removed for brevity
  
  def calling_speak
    speak
  end
  
  protected
    def speak
      puts "I am a protected method"
    end
end
class Human < Mammal
  # previous code removed for brevity
  
  def explicitly_speak
    self.speak
  end
  
  def implicitily_speak
    speak
  end
end
mammal = Mammal.new
mammal.speak # => protected method `speak' called for #<Mammal:0x007fa5438183d8> (NoMethodError)
mammal.calling_speak # => I am a protected method
person = Human.new
person.speak # => protected method `speak' called for #<Human:0x007fedfe824710> (NoMethodError)
person.explicitly_speak # => I am a protected method
person.implicitily_speak # => I am a protected method


# **************** Private *****************
# (private - methods that can only be called within the class and subclasses implicitly)







class Mammal
  # previous code removed for brevity
  
  def calling_speak
    speak
  end
  
  protected
    def speak
      puts "I am a protected method"
    end
end
class Human < Mammal
  # previous code removed for brevity
  
  def explicitly_speak
    self.speak
  end
  
  def implicitily_speak
    speak
  end
end
mammal = Mammal.new
mammal.speak # => protected method `speak' called for #<Mammal:0x007fa5438183d8> (NoMethodError)
mammal.calling_speak # => I am a protected method
person = Human.new
person.speak # => protected method `speak' called for #<Human:0x007fedfe824710> (NoMethodError)
person.explicitly_speak # => I am a protected method
person.implicitily_speak # => I am a protected method
