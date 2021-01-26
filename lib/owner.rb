require 'pry'

class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name, species="human")
    @name = name
    @species = species
    @@all << self
  end


  def say_species
   "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats  
   Cat.all.find_all {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.find_all {|dog| dog.owner == self}
  end

  def buy_dog(name_of_dog)
    Dog.new(name_of_dog, self)
  end
  def buy_cat(name_of_cat)
     Cat.new(name_of_cat, self)
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    dogs.each do |dog|
      dog.mood = "nervous"
    end
    cats.each do |cat|
      cat.mood = "nervous"
    end
    dogs.each do |dog|
      dog.owner = nil
    end
    cats.each do |cat|
      cat.owner = nil
    end
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  end