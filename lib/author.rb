class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self #=> author
  end

  def add_post_by_title(title)
    post = Author.new(title)
    @posts << post
    post.author = self  #=> author
  end

  def title

  end
end
