require 'pry'
class Post
  attr_accessor :author, :name, :title
  @@all = []

  def initialize(title)
    # @name = name
    @title = title
<<<<<<< HEAD
=======
    # binding.pry
>>>>>>> 0fd860c21f4f4d3a12995aee44f7b8b0a29040e6
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
