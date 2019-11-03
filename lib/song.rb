require_relative 'artist'

class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        # @artist = artist
        @@all << self
    end

    def name
        @name
    end

    def artist_name
        @artist == nil ? nil : @artist.name
    end

    def self.all
        @@all
    end
end
