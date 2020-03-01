class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(song_name, artist_name)

  def self.create
    @@all
  end

  def save
    self.class.all << self
  end

end
