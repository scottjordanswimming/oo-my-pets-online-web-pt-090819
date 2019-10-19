class Owner
  
  attr_reader :namem :species
  
  
  def initialize(name)
    @name = name
    @species = "human"
end

def say_species
  "I am a #{species}"
end


end