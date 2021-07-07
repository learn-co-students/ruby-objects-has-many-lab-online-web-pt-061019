class Author 
  attr_accessor :name, :posts
  @@counter = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    @@counter += 1
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    @@counter += 1
    post.author = self
  end
  
  def self.post_count
    @@counter
  end
end