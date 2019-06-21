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
    if self.author == nil
      nil
    else
      self.author.name
    end
  end

  def self.all
    @@all
  end

end
