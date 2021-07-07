class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = [ ]
  end

  def add_posts(posts)  #method that enacts those associations at the appropriate time. There are many songs and an artist has multiple songs
    @posts<<posts
    post.author = self
  end

def posts
  @posts
end

def add_post_by_name(name, genre) #method, which adds a song to an artist's collection and tells that song that it belongs to that particular artist. But, we also create a new song using the name and genre from the arguments.
  song = Post.new(name, genre)
  @posts<< posts
  posts.author = self
end

def post.count
  posts.count
end

end
