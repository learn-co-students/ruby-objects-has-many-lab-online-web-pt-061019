class Post 
  attr_accessor :title, :author 
  @@all = [] 
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    # if @author == nil
    #   nil
    # else
    #   self.author = author.name
    # end
    
    @author == nil ? nil : self.author = author.name
  end
end