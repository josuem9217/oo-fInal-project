class Owner
    attr_accessor :nameO, :dogs 
    def initialize(nameO)
        @nameO = nameO
        @dogs = []
        
    end
    
    # def adoptAdog(doggo)
    #     @doggo = doggo
    #     @dogs << @dog
    #     doggo.ownerAdopt << self
    # end
    
end

class Dog
    attr_accessor :nameD, :owners, :size, :weight
    attr_reader :specie
    def initialize(nameD, specie, size, weight)
        @nameD = nameD
        @owners = []
        @specie = specie
        @size = size
        @weight = weight
        @kidFriendly = srand[2]
        
    end
    
    def kidFriendly
      if @kidFriendly == 1 
        @kidFriendly = "KID FRIENDLY!"
      else
        @kidFriendly = "NOT KID FRIENDLY!!!"
      end
      return @kidFriendly
    end
    
    def dogQualities
        "#{@nameD} is a  #{@specie}, who is quite #{@size}, and weighs #{@weight}!"
    end
        
        
    # def ownerAdopt(owner)
    #     @owner = owner
    #     @owners << @owner
    #     owner.adoptAdog << self
    # end
    
end

# roof = Dog.new("roof")
# puts "What is your doggo's name?"
# name, dog = gets.chomp
# puts "What is your doggo's specie?"
# specie = gets.chomp
# puts "What is your doggo's size?"
# size = gets.chomp
# puts "What is your doggo's weight?"
# weight = gets.chomp
# dog = Dog.new("#{name}", "#{specie}", "#{size}", "#{weight}")


puts "What is your name?"
nameO, owner = gets.chomp
owner = Owner.new("#{nameO}")

puts "What kind of doggo are you looking for?"
puts  "What is your ideal specie?"
specie = gets.chomp
puts "What is your ideal size?"
puts "Small? Big? Large?"
size = gets.chomp

weight = "5kg"

puts "hmmmmm"
puts "looks like we might have a doggo that fits that description"
puts "Do you have a name in mind while we fetch the #{size} doggo?"
nameD, dog = gets.chomp
dog = Dog.new("#{nameD}", "#{specie}", "#{size}", "#{weight}")

puts "Well allow me #{nameO}, to introduce you to #{nameD}!!!"
puts dog.dogQualities


puts "Do you want to know if your doggo is kid friendly?"
answ1 = gets.chomp.downcase

if answ1 == "yes"
  dog.kidFriendly
else 
  puts "Nevermind then"
end






















