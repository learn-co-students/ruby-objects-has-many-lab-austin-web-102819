require_relative "post.rb"

class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def author_name
        self.name
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        add_post(Post.new(title))
    end

    def posts
        Post.all.select{|post| post.author_name == self.author_name}
    end

    def self.post_count
        Post.all.length
    end
end

