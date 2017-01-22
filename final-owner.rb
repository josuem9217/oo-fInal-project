class Dog
    attr_accessor :name, :owners, :size, :weight
    attr_reader :specie
    def initialize(name, specie, size, weight)
        @name = name
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
       return "#{@name}, #{@specie}, #{@size}, #{@weight}, #{@kidFriendly}"
    end
        
        
    # def ownerAdopt(owner)
    #     @owner = owner
    #     @owners << @owner
    #     owner.adoptAdog << self
    # end
    
end

# roof = Dog.new("roof")
puts "What is your doggo's name?"
name, dog = gets.chomp
puts "What is your doggo's specie?"
specie = gets.chomp
puts "What is your doggo's size?"
size = gets.chomp
puts "What is your doggo's weight?"
weight = gets.chomp
dog = Dog.new("#{name}", "#{specie}", "#{size}", "#{weight}")

puts "Do you want to know if your doggo is kid friendly?"
answ1 = gets.chomp.downcase

if answ1 == "yes"
  dog.kidFriendly
else 
  puts "Nevermind then"
end