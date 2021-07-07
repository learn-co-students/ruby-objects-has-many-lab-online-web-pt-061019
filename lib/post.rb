class Post
attr_accessor :name, :author, :genre

def initialize(name, genre)
  @name= name
  @genre = genre
end

  def author_name
    self.author.name
  end

end
