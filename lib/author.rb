class Author
    attr_accessor :name, :posts
    def initialize(name)
        @name= name
        @posts= []
    end

    def posts
        @posts
    end

    def add_post(post) # Setting the post object's artist attribute equal to whatever Author object was called on. 
        @posts << post
        post.author = self
    end
        
    def add_post_by_title(post)
        new_post= Post.new(post)
        new_post.author= self
        @posts << new_post
    end

    def self.post_count
        Post.all.count
    end

end
