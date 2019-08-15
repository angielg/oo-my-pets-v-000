require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  
  def initialize(species, name = nil)
    @species = species
    @name = name
    @pets = {:fishes => [], :dogs=> [], :cats=> []}
    @@all << self
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
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  
  def walk_dogs
    @pets[:dogs].collect do |dog|
      dog = Dog.change_mood("happy")
    #end
  end
end