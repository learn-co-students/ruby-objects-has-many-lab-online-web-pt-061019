class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = [ ]
  end

  def add_songs(songs)  #method that enacts those associations at the appropriate time. There are many songs and an artist has multiple songs
    @songs <<songs
    song.artist = self
  end

def songs
  @songs
end

def add_song_by_name(name, genre) #method, which adds a song to an artist's collection and tells that song that it belongs to that particular artist. But, we also create a new song using the name and genre from the arguments.
  song = Song.new(name, genre)
  @songs << song
  song.artist = self
end

def song.count
  songs.count
end

end
