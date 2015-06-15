class Song

  attr_accessor :name, :genre, :artist

  def genre=(genre)
    @genre = genre
    @genre.add_song(self)
  end

end