require "pry"
require_relative 'artist'
class Song
    # attr_reader :song_name
    attr_accessor :artist, :song_name, :name
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
    self.artist
    # binding.pry
   end


end