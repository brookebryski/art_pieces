class ArtPieces::Painting
  attr_accessor :name, :details, :url

  @@all = []

  def initialize(name,url)
    @name = name
    @details = []
    @url = url
    save
  end
  
  def self.all
    ArtPieces::Scraper.scrape_paintings if @@all.empty?
    @@all
  end
  
  def get_details
    ArtPieces::Scraper.scrape_details(self) if @details.empty?
  end
  
  def save
    @@all << self
  end
end