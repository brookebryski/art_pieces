class ArtPieces::Scraper
  def self.scrape_paintings
    doc = Nokogiri::HTML(open("https://historylists.org/art/20-of-the-world%E2%80%99s-most-famous-art-pieces.html"))
    
     paintings = doc.css("body h2")
  
 paintings.each do |p|
  name = p.text
  ArtPieces::Painting.new(name)
    end
  end
  
  def self.scrape_details(painting)
    ArtPieces::Detail.new("details", painting)
    ArtPieces::Detail.new("details", painting)
  end
end