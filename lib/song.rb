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
    song_name.name = title
    song_name
  end

  def self.create_by_name(title)
    song_name = self.create
    song_name.name = title
    song_name
  end

  def self.find_by_name(title)
    self.all.each do {|song_name| song_name == title}
    #self.all.include? (title)
  end


end
