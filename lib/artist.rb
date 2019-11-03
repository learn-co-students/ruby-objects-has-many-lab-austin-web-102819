require "pry"
require_relative 'song'
class Artist
    attr_accessor :name, :songs

    @@songs = [] # Class variable where we put all songs related to an artist
    def initialize(name)
        @name= name # Set the instance variable to the name of the artist
        @songs = []
    end

 
    def add_song_by_name(song)
        artist_song = Song.new(song)
        artist_song.artist = self
        @songs << artist_song
        # binding.pry
    end

    def add_song(song) #adds a song to an artist (artist now owns the song)
        @songs << song
        song.artist = self # We are calling #add_song on an OBJECT song. We set the attribute "artist" for the song equal to the current object (artist). 
    end

 


    def songs
        
        Song.all.select {|s| s.artist = self} # Call the class method @@all. Iterate over each item in @@all and return any element who's artist attribute is self.
        #  binding.pry
    end

    def self.song_count
        Song.all.count
    end
end
