class Song
  attr_accessor :name, :artist
  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create
    song_name = self.new
    self.all << song_name
    song_name
  end

  def self.new_by_name(title)
    song_name = self.new
    @@all.name = title
    song_name
  end

end
