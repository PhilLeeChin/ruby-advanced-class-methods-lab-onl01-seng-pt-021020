class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(song, artist_name)
    @name = song
    @artist = artist_name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create
    song = self.new
    self.all << song
    song
  end



end
