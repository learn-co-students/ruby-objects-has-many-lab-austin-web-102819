require_relative "artist.rb"

class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name
        self.artist ? self.artist.artist_name : nil
    end

    def self.all
        @@all
    end

end