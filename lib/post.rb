class Post
  attr_accessor :author, :name, :title
  @@all = []

  def initialize(name)
    @name = name
    @title = title
    @@all << self
  end

  def author_name
    self.author.name
  end

  def self.all
    @@all
  end

end
