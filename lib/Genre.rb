<<<<<<< HEAD
class Genre
  extend Concerns::Findable

  attr_accessor :name
  attr_reader :songs

  @@all = []

=======
class Genre 
   extend Concerns::Findable
  
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
>>>>>>> 249ac2a72e81b348bfb5e8ea408705704c8013ea
  def initialize(name)
    @name = name
    @songs = []
  end
<<<<<<< HEAD

  def self.all
    @@all
  end

  def self.destroy_all
    all.clear
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    genre = new(name)
    genre.save
    genre

    # Or, as a one-liner:
    # new(name).tap{ |g| g.save }
  end

  def artists
    songs.collect{ |s| s.artist }.uniq
  end
=======
  
  def self.all
    @@all 
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save 
    @@all << self 
  end
  
  def self.create(genre)
    genre = self.new(genre)
    genre.save
    genre
  end
  
  def songs
    @songs
  end
 
  def artist
    @new_array = []
    @songs.each do |song|
      if @new_array.include?(song.artist)
        nil
      else
        @new_array << song.artist
      end
    end
    @new_array
  end
  
>>>>>>> 249ac2a72e81b348bfb5e8ea408705704c8013ea
end