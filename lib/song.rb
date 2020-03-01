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
    self.all.find {|song_name| song_name.name == title}
  end

  def self.find_or_create_by_name(title)
    self.find_by_name(title) == nil ? self.create_by_name(title) : self.find_by_name(title)
  end

  def self.alphabetical
    self.all.sort_by{|title| title.name}
  end

end
