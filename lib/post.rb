class Post
  attr_accessor :author, :post, :title
  
  def initialize(post)
    @post = post
    @title = title
  end
  
  def author_name
    self.author.name
  end
  
end 