class ArtPieces::Scraper
  
  def self.scrape_paintings
    doc = Nokogiri::HTML(open("https://historylists.org/art/20-of-the-world%E2%80%99s-most-famous-art-pieces.html"))
    
     paintings = doc.css("body h2")
  
 paintings.each do |p|
  name = p.text
  ArtPieces::Painting.new(name)
    end
  end
  

 # def self.scrape_details(painting)
  #  url = "https://historylists.org/art/20-of-the-world%E2%80%99s-most-famous-art-pieces.html"
  #  doc = Nokogiri::HTML(open(url))
    
 #   details = doc.css("body p")
    
 #   details.each do |p|
  #    puts p.text
 #     ArtPieces::Detail.new
#    end
#  end
 #def self.scrape_details(painting)
    #doc = Nokogiri::HTML(open("https://historylists.org/art/20-of-the-world%E2%80%99s-most-famous-art-pieces.html"))
    
   #  details = doc.css("body p")
  
 #details.each do |d|
#  description = d.text
#  ArtPieces::Detail.new(description)
#    end
#  end
  
end

