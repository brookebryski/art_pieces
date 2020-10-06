class ArtPieces::CLI 
  
  def call
    puts "\nWelcome to your art lesson!\n"
    @input = ""
    until @input == "exit"
    get_art_pieces
    list_art_pieces
    get_user_art_piece
    user_status
  end
  goodbye
  end

  def get_art_pieces
    @paintings = ArtPieces::Painting.all
  end
  
  def list_art_pieces
    puts "Choose a piece of art to learn more about."
    @paintings.each.with_index(1) do |painting, index| 
    puts "#{index}. #{painting.name}"
    end
  end
  
  def get_user_art_piece
    chosen_painting = gets.strip.to_i
   show_details_for(chosen_painting) if valid_input(chosen_painting, @paintings)
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_details_for(chosen_painting)
    painting = @paintings[chosen_painting - 1]
    painting.get_details
    puts "Here is some information for #{painting.name}"
    painting.details.each_with_index do |detail|
      puts "#{detail}" 
    end
    
  end
 
  def user_status
    puts "All finished? Type 'exit' or press any key to learn about more pieces."
    @input = gets.strip
  end
  
  def goodbye
    puts "See you next time!"
  end
end