class ArtPieces::CLI 
  def call
    puts "\nWelcome to your art lesson!\n"
    get_art_pieces
    list_art_pieces
    get_user_art_piece
  end
  
  def get_art_pieces
    @art_pieces = ['Mona Lisa by Leonardo da Vinci', 'Mona Lisa by Leonardo da Vinci']
  end
  
  def list_art_pieces
    puts "Choose a piece of art to learn more about."
    @art_pieces.each.with_index(1) do |art_piece, index| 
    puts "#{index}. #{art_piece}"
    end
  end
  
  def get_user_art_piece
    chosen_art_piece = gets.strip.to_i
   show_details_for(chosen_art_piece) if valid_input(chosen_art_piece, @art_pieces)
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_details_for(chosen_art_piece)
    art_piece = @art_pieces[chosen_art_piece - 1]
    puts "Here is some information for #{art_piece}"
  end
end
