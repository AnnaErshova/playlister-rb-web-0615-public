class Artist

  attr_accessor :name, :songs, :genres

  @@artists = Array.new

  def initialize
    @songs = Array.new
    @genres = Array.new
    @@artists << self
  end

  def add_song(song)
    @songs << song
    @genres << song.genre
    song.artist = self
    song.genre.add_artist(self) unless song.genre == nil # Artist with songs can have a song added
  end 

  # class methods
  def self.all
    @@artists
  end

  def self.count
    @@artists.count
  end

  def self.reset_artists
    @@artists.clear
  end

end # end class


