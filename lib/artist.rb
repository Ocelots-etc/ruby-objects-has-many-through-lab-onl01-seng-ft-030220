class Artist
  attr_accessor :name, :songs, :genres, :all, :artists

  @@all = []

  def initialize(name)
    @name = name
    @genres = []
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @songs = Song.all.select {|song| song.artist == self}
  end

  def new_song(title, genre)
    @genres << genre
    Song.new(title, self, genre)
  end

  def genres
    Song.all.each do |song|
      if song.artist == self
        @genres << song.genre
      end
    end
    @genres
  end

  end

