class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
    self.author = author

  end

  def author_name
    if self.author != nil # self.author.name is too specific. If there is no author object, assigned to the post, then there for sure is no self.author.name
      self.author.name
    else
      nil
    end
  end

  def self.all
    @@all
  end

  def post_count
    self.all.length
  end
end
