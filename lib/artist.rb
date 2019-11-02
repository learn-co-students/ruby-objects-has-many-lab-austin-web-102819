require_relative "song"
require "pry"
class Artist 

attr_accessor :name
@@all = []
def initialize (name)
    @name = name 
    @@all << self
end

def self.all
@@all
end

def songs
    Song.all.select do |each|
     each.artist == self
    end
end

def add_song(song)
 song.artist = self 
end

def add_song_by_name (name)
 song_1 = Song.new(name)
song_1.artist = self
end


def self.song_count
Song.all.count
end


end 
