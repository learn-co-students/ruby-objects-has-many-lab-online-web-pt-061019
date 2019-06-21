require 'pry'
class Post
  attr_accessor :author, :name, :title
  @@all = []

  def initialize(title)
    # @name = name
    @title = title
    @@all << self
  end

  def author_name
    self.author == nil ? nil : self.author.name
  end

  def self.all
    @@all
  end

end
