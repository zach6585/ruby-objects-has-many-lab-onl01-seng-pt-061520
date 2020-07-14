class Author 
  
  attr_accessor :name
  @@count = 0
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
 
  def add_post(posta)
    posta.author = self
    @posts << posta
  end 
  
  def add_post_by_title(pst)
    posta = Song.new(pst)
    @posts << posta
    posta.author = self 
  end
  
  def self.post_count
    @@count 
  end 
  
  def posts
    Post.all.select {|pst| pst.author == self}
    @@count += 1 
  end
  
end