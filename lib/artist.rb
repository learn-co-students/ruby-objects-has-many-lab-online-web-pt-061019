require 'pry'
class Artist
  attr_accessor :name

  @@song_count = 1

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count +=1
    song.artist = self #=> the artist
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    song.name = name
  end

  def self.song_count
    @@song_count
    # binding.pry
  end
end
