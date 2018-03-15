require 'pry'
class Song 
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    song = Song.new(filename)
    song.name = filename[0]
    song.artist = filename[1]
    binding.pry
  end  
end  