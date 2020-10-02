class ArtPieces::Painting
  attr_accessor :name
  attr_writer :details
  @@all = []

  def initialize(name)
    @name = name
    @details = details
    save
  end
  
  def self.all
    ArtPieces::Scraper.scrape_paintings if @@all.empty?
    @@all
  end
  
  def details
ArtPieces::Scraper.scrape_details(self) if @details.empty?
    @details
  end
  
  def save
    @@all << self
  end
end