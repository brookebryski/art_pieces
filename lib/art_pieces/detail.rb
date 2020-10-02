class ArtPieces::Detail
  attr_accessor :name, :painting, :url
  @@all = []

  def initialize(name, painting)
    @name = name
    @painting = painting
    @url = url
    add_to_painting
    save
  end
  
  def self.all
    @@all
  end
  
  def add_to_painting
@painting.details << self unless @painting.details.include? (self)
  end
  
  
  def save
    @@all << self
  end
end