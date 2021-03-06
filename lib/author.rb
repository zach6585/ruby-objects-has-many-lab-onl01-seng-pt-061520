
class Author
  attr_accessor :name
  def initialize(name)
    @name = name
  end


  def add_post(pst)
    pst.author = self

  end

  def add_post_by_title(name)
    pst = Post.new(name)
    add_post(pst)
  end

  def self.post_count
    Post.all.length

  end
  def posts
    @posts = Post.all.select {|pst| pst.author == self}
  end
end
