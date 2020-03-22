require 'pry'
class Artist

@@all = []

attr_accessor :name, :artists, :songs, :genres

def initialize(name)
  @name = name
  @genres = []
  @@all << self
end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self }
    # @songs
  end

  def genres
    Genre.all.select do |genre|
      genre.songs == self
    end

  end

  def self.all
    @@all
  end

end
