class Owner
    attr_accessor :name, :dogs 
    def initialize(name)
        @name = name
        @dogs = []
        
    end
    
    def adoptAdog(doggo)
        @doggo = doggo
        @dogs << @dog
        doggo.ownerAdopt << self
    end
    
end