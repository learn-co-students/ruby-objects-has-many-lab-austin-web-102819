require "pry"
require_relative 'song'
class Artist
    attr_accessor :name, :song_name, :songs, :artist

    @@songs = [] # Class variable where we put all songs related to an artist
    def initialize(name)
        @name= name # Set the instance variable to the name of the artist
        @songs = []
    end

    def add_song(song) #adds a song to an artist
        song.artist = self
        @songs << song
        #  binding.pry
    end

    def songs
        @songs
        #  binding.pry
    end

    def add_song_by_name(song)
        artist_song = Song.new(song)
        @songs << artist_song
        # artist_song.self
        artist_song.artist = self
    end

    def self.song_count
        @songs.count
    end
end
