class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
    @@post_count = 0
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count = @@post_count + 1
  end

  def self.post_count
    @posts.length
  end
end
