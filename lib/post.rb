class Post

  attr_accessor :name, :author

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @author = nil
  end

  def self.all
    @@all
  end

  def title
    @name
  end

  def author_name
    if @author != nil
      return self.author.name
    else
      return nil
    end
  end


end
