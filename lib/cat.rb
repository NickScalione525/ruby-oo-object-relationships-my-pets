require 'pry'

class Cat
  attr_reader  :mood, :name, :owner

  @@all = []

  def initialize(name, owner, mood="nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
  end

  def owner=(owner)
    @owner = owner
  end

  def mood=(mood)
    @mood = mood
  end

  def self.all
    @@all

  end





end