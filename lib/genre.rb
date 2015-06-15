class Genre

  attr_accessor :name, :songs, :artists

  @@genres = Array.new

  def initialize
    @songs = []
    @artists = []
    @@genres << self
  end

  def add_song(song)
    @songs << song
  end

  def add_artist(artist)
    @artists << artist unless @artists.include? artist
  end

  # class methods
  def self.all # keeps track of all genres, can be used to test if a genre exists 
    @@genres
  end

  def self.count
    @@genres.count
  end

  def self.reset_genres
    @@genres.clear
  end

end # end class