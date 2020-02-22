<<<<<<< HEAD
class Artist
  extend Concerns::Findable

  attr_accessor :name
  attr_reader :songs

  @@all = []

=======
class Artist 
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
    artist = new(name)
    artist.save
    artist

    # Or, as a one-liner:
    # new(name).tap{ |a| a.save }
  end

  def add_song(song)
    song.artist = self unless song.artist
    songs << song unless songs.include?(song)
  end

  def genres
    songs.collect{ |s| s.genre }.uniq
  end
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
  
  def self.create(artist)
    artist = self.new(artist)
    artist.save
    artist
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    if song.artist == nil 
      song.artist = self
    else
      nil
    end
    if @songs.include?(song)
      nil 
    else
      @songs << song
    end
    song
  end
  
  def genres 
    @new_array = []
    @songs.each do |song|
      if @new_array.include?(song.genre)
        nil
      else
        @new_array << song.genre
      end
    end
    @new_array
  end
end
  
  
>>>>>>> 249ac2a72e81b348bfb5e8ea408705704c8013ea
