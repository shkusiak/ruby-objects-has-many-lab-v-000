class Post
  attr_accessor :title, :author, :name

  def initialize(title)
    @title = title
    @author = author
    @name = author.name
  end

  def author_name
    @name
  end
end
