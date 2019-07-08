class Author
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(entry)
    @posts << entry
    entry.author = self
  end
  
  def add_post_by_title(title)
    entry = Post.new(title)
    @posts << entry
    entry.author = self
  end
  
  def self.post_count
    Post.all.length
  end
end