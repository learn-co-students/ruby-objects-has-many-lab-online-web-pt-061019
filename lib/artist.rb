class Artist

  attr_accessor :name

  @@all = [] # All artists
  @@songs = [] ## All songs, by all artists

  def initialize(name)
    @name = name
    @songs = [] # All songs that belong to a particular artist
  end

  def add_song_by_name(name)
    song = Song.new(name) # Remember that the Song intialize method requires a name as an argument. The initialization will fail otherwise
    add_song(song)
  end

  def add_song(song)
    @songs << song # Add this new song, to the array of song by this artist
    song.artist = self # For the song that was just added, assign this artist as a property
    @@songs << song # Add the song to the class @@songs array
    song # Return the song
  end

  def songs
    @songs
  end

  def self.song_count
    @@songs.count

  end

end
