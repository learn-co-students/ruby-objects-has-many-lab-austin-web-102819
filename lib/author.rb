class Author

    attr_accessor :name

def initialize(name)
    @name = name
end


def posts
    Post.all.select do |item|
    item.author == self
    end
end

def add_post (post)
    post.author = self
end

def add_post_by_title (title)
post_1 = Post.new(title)
post_1.author = self
end

def self.post_count
Post.all.count
end



end