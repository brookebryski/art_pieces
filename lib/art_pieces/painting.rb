class ArtPieces::Painting
  attr_accessor :name, :details

  @@all = []

  def initialize(name)
    @name = name
    @details = details
    save
  end
  
  def self.all
    ArtPieces::Scraper.scrape_paintings(self) if @@all.empty?
    @@all
  end
  
  def get_details
    ArtPieces::Scraper.scrape_details(self) if @details.empty?
  end
  
  def save
    @@all << self
  end
end