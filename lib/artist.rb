class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @@song_count = 0
  end

  def add_song(song)
    @@song_count = @@song_count + 1
    @songs << song
    song.artist = self #the songs artist is Artist
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    @@song_count = @@song_count + 1
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@song_count
  end
#  def self.song_count
#    array = @songs
#    array = array.size
#    array#@@song_count = @songs
#  end
end
