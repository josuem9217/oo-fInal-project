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
    
    def dogQualities
       puts "#{@name}, #{@specie}, #{@size}, #{@weight}, #{@kidFriendly}"
    end
        
        
    # def ownerAdopt(owner)
    #     @owner = owner
    #     @owners << @owner
    #     owner.adoptAdog << self
    # end
    
end

roof = Dog.new("roof")
puts "What is your doggo's name?"
name = gets.chomp