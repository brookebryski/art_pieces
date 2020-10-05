
class ArtPieces::Scraper
  
  def self.scrape_paintings
    doc = Nokogiri::HTML(open("https://www.brushwiz.com/most-famous-paintings/"))
    
    paintings = doc.css("div.row.items-grid.grid-categories.page-section div.col.col-25")
  
  paintings.each do |painting|
name = painting.text.strip
url = painting.css("a").attr("href").value
ArtPieces::Painting.new(name,url)
  end
end
  

def self.scrape_details(painting)
  url = "https://www.brushwiz.com#{painting.url}"
  doc = Nokogiri::HTML(open(url))
  p = doc.css("div.product-block.large")
  p.each do |p|
   description = p.text.strip
   painting.details << description
  end
end
end