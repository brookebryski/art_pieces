class ArtPieces::CLI 
  def call
    puts "Welcome to your art lesson!"
    #get_art_pieces
    # list_art_pieces
    #get_information_for(art_piece)
  end
  
  def get_art_pieces
    # to be scraped instead
    @art_pieces = ['Mona Lisa by Leonardo da Vinci', 'Mona Lisa by Leonardo da Vinci']
  end
  
  def list_art_pieces
    #list art pieces
    @art_pieces.each.with_index(1) do |art_piece, index| 
    puts "#{index + 1}. #{art_piece}"
    end
  end
end
