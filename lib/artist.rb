class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize (name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song (song)
    self.songs << song
  end

  def songs
    self.all.select do |song|
      song
    end
  end

  def self.find_or_create_by_name (name)
    if self.find(name)
      self.find(name)
    else self.create(name)
    end
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name}
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

end
