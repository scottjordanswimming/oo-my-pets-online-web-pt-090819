class Owner
  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
end

def say_species
  "I am a #{species}"
end

def self.all
  @@all
end

def self.count
  
  @@all.count
end

def self.reset_all
  
  @@all.clear
end

def cats 
  Cat.all.select {|c| c.owner == self}
  
end

def dogs
  Dog.all.select {|d| d.owner == self}
end

def buy_cat(name)
  Cat.new(name,self)
end

def buy_dog(name)
  Dog.new(name,self)
end
  
def walk_dogs
  dogs.each{|d| d.mood = "happy"}
end

def feed_cats
  cats.each{|c| c.mood = "happy"}
  
end

def pets 
 # pets = []
 # pets << dogs 
 # pets << cats 
 # pets.flatten
  pets = dogs + cats
end
  
  def sell_pets
   pets.each.do |p|
     p.mood = "nervous"
    
    
  end

end