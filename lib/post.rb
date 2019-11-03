require_relative "author.rb"

class Post

    attr_accessor :title, :author 

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def author_name
        self.author ? self.author.author_name : nil
    end

    def self.all
        @@all
    end
end