class Author
    attr_accessor :name, :posts

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def posts
        Post.all.select {|p| p.author = self}
    end

    def add_post(post)
        @author = self
    end

    def add_post_by_title(post_title)
        p = Post.new(post_title)
        p.author = self
    end

    def self.all
        @@all
    end

    def self.post_count
        Post.all.count
    end
end
