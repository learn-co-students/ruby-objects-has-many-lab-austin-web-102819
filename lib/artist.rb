require "song"

class Artist

    attr_accessor :name, :song
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end 

    def add_song(song)
        @songs << song
    end 

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
        add_song(song)
    end

    def songs
        Song.all.select {|song| song.artist = self}
    end 

    def self.song_count
        Song.all.length
    end 
end 