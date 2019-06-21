require 'pry'
class Author
  attr_accessor :name
  @@post_count= 1

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @@post_count +=1
    @posts << post
    post.author = self #=> author
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self  #=> author
    post.title = title
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end
end
