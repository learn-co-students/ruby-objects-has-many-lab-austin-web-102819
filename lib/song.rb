require "pry"
require_relative 'artist'
class Song
    # attr_reader :song_name
    attr_accessor :artist, :name # We need artist here in order for Artist to read/write to this attribute
    @@all = []
    def initialize(name)
        @name=name
        @@all << self
    end

    # def add_song(song_name, artist)
    #     @artist = artist
    # end

   def self.all
    @@all
   end

   def name
    @name
   end



   def artist_name
    if self.artist
        self.artist.name
      else
        nil
      end
    end


end
