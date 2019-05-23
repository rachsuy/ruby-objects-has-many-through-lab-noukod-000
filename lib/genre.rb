class Genre 
  attr_accessor :name, :songs, :artists
  
  @@all = []
  def initialize(name)
    @name = name
   # @songs = songs
    #@artists = artists
    @@all << self
  end
  
  def self.all
   @@all
  end
  
 
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

   def artists
    Song.all.map do |song|
      song.artist
    end
  end
end