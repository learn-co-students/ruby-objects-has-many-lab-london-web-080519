class Post

    attr_accessor :post, :author, :title

    @@all = []

    def initialize(post)
        @post = post
        @title = post
        @@all << self
    end
    
    def self.all
        @@all
    end

    def author_name
        if self.author
            self.author.name
        else 
            nil
        end
    end

end
