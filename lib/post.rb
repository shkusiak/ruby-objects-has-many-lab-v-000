class Post
  attr_accessor :title, :author, :name

  def initialize(title)
    @title = title
    @author = author
  end

  def author_name
    author.name
  end
end
