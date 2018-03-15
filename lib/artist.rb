class Artist 
  attr_accessor :name, :song
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
  end  
  
  def songs 
    @songs
  end 
  
  def save
    @@all << self
  end 
  
  def self.all
    @@all
  end  
  
  def self.find_or_create_by_name(name)
    if self.name.nil?
      name = Artist.new(name)
      @@all << self
    else
      self
    end
  end  
  
  def print_songs
    puts self.songs.each {|song| puts "#{song.name}\n"}
  end  
end      
      
  
