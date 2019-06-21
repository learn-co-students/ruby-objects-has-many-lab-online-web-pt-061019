class Song
  attr_accessor :artist, :name, :genre
  @@all = []

  def initialize(name)
    @name = name
    @genre = genre
    @@all << self
  end

  def artist_name
    if artist == nil
      nil
    else
      self.artist.name
    end
  end

  def self.all
    @@all
  end

end
