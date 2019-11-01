class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def add_post(title)
        title.author = self
    end
    def posts
        Post.all.select { |b| b.author == self}
    end
    def add_post_by_title(title)
        Post.new(title)
        Post.all.last.author = self
    end
    def self.post_count
        Post.all.count
    end
end