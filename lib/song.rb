class Song 
  attr_accessor :name, :artists, :genres
  
  @@all = []
  
  def initialize(name, artists, genres)
    @name = name
    @artists = artists
    @genres = genres
    @@all << self
  end
  
  def self.all
   @@all
  end
  
  def genre
    @genres 
  end
  
  def  artist
   @artists
  end
end