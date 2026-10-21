require_relative 'library_item'

class Book < LibraryItem
  def initialize(title, publication_year, author, genre)
    super(title, publication_year)
    @author = author
    @genre = genre
  end

  def display_info
    puts "#{get_info}, Author: #{@author}, Genre: #{@genre}"
  end
end
