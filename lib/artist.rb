require 'pry'
class Artist
  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    song.artist = self
    #argument(song instance = song1).artist=(writer of the song class) = self (Artist instance) because we are in an instance method

    @songs << song
    @@song_count +=1
      binding.pry
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end
