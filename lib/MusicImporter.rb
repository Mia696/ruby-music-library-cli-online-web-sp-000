class MusicImporter
  attr_reader :path
<<<<<<< HEAD

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each{ |f| Song.create_from_filename(f) }
  end
end
=======
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(@path).select! {|entry| entry.end_with?(".mp3")}
  end
  
  def import 
    self.files.each.do |filename|
      Song.create_from_filename(filename)
    end
  end
  
>>>>>>> 249ac2a72e81b348bfb5e8ea408705704c8013ea
