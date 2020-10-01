class ArtPieces::Scraper
  def self.scrape_paintings
    doc = Nokogiri::HTML(open("https://historylists.org/art/20-of-the-world%E2%80%99s-most-famous-art-pieces.html"))
   end
end