class Song
  attr_accessor :name, :artist

  @@all = [] # All songs

  def initialize(name)
    @name = name
    @@all << self # All this new song to the array of all songs
  end

  def self.all
    @@all # Reference the all songs class array
  end

  def artist_name
    if self.artist != nil # self.artist.name is too specific. If there is no author object, assigned to the post, then there for sure is no self.author.name
      self.artist.name # Return the artist name, not the artist object. Artist is the object and name is a property of that object
    else
      nil # If there is no artist assigned to a song, return nil
    end
  end

end
