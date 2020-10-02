require_relative "./art_pieces/version"
require_relative "./art_pieces/cli"
require_relative "./art_pieces/painting"
require_relative "./art_pieces/detail"
require_relative "./art_pieces/scraper"


require 'pry'
require 'nokogiri'
require 'open-uri'

module ArtPieces
  class Error < StandardError; end
  # Your code goes here...
end
