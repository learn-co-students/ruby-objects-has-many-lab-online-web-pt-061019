require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@song_count = 0

def initialize(name)
  @name = name
  @songs = []
end

def songs
  @songs
end

def add_song(song)
  @songs << song #has_many
  @@song_count += 1
  song.artist = self
end

def add_song_by_name(song_name)
  # song = Song.new(song_name)
  # @songs << song
  # song.artist = self
  s = Song.new(song_name)
  self.add_song(s)
  s
end

def self.song_count
  @@song_count
end

end
