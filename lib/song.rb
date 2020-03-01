class Song
  attr_accessor :name, :artist
  @@all = []

  def new
    song_name = self.new
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create
    new
    self.all << song_name
    song_name
  end

  def self.new_by_name(title)
    song_name = self.new
    song_name.name = title
    song_name
  end

  def self.create_by_name
    song_name = self

end
