class Song

@@all = []

attr_accessor :name, :songs, :artist, :genres

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def artist
    @artist
  end

  def self.all
    @@all
  end
end
