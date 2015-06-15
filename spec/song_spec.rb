describe "Song" do

  it "can initialize a song" do
    expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
     song = Song.new # initialize a song
     song.name = "Wind of Change" # name a song
     expect(song.name).to eq("Wind of Change") # check that name == above
  end

  it "can have a genre" do
     song = Song.new # initialize a song
     song.genre = Genre.new # initialize a gengre
     expect(Genre.all).to include (song.genre) #testing for presence of the genre
  end

  it "has an artist" do
     song = Song.new # initialize a song
     artist = Artist.new # initialize an artist
     artist.name = "Scorpions" # assign a band
     song.artist = artist
     expect(song.artist.name).to eq("Scorpions")
  end # end test block

end # end class Song

