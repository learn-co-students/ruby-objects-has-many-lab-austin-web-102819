require 'pry'
class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def add_song(song)
        song.artist = self
    end
    def songs
        Song.all.select { |b| b.artist == self}
    end
    def add_song_by_name(song)
        Song.new(song)
        Song.all.last.artist = self
    end
    def self.song_count
        Song.all.count
    end
end