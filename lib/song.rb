require 'pry'
class Song
  attr_accessor :name, :artist

  @@all = []

def initialize(name)
  @name = name
  @@all << self
  # binding.pry
end

def self.all
  @@all
end

def artist_name
  # binding.pry
  self.artist == nil ? nil : self.artist.name
end

end
