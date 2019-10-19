class Cat
  attr_accessor :owner, :mood
  attr_reader :name 
  
  @@all = []
  
  def initialize(name,owner)
    @name = name 
    @owner = owner
  
  
end