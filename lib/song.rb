class Song
  attr_accessor :name, :artist
  @@all = []

  def self.create
    @@all << self
  end

  def save
    self.class.all << self
  end

end
