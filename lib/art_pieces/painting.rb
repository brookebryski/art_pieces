class ArtPieces::Painting
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    ArtPieces::Scraper.scrape_paintings if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
end