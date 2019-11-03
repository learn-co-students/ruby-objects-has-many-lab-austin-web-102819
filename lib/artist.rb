require "pry"
require_relative 'song'

class Artist
    attr_accessor :name
   
    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
        # @songs << song
    end

    def add_song_by_name(song_name)
       song = Song.new(song_name)
    #    @songs << song
       song.artist = self
    end

    def self.song_count
        Song.all.count
    end

    def songs
        Song.all.select {|s| s.artist = self}
    end
end