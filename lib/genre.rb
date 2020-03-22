class Genre
  attr_accessor :name, :songs, :artists, :artist, :patient

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end

  def songs
    @songs = Song.all.select {|song| song.genre == self}
  end

  def self.all
    @@all
  end

  def artists
    Song.all.each do |song|
      if song.genre == self
        @artists << song.artist
      end
    end
    @artists
  end

  end
