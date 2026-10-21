require_relative 'library_item'

class DVD < LibraryItem
  def initialize(title, publication_year, director, duration)
    super(title, publication_year)
    @director = director
    @duration = duration
  end

  def display_info
    puts "#{get_info}, Director: #{@director}, Duration: #{@duration} minutes"
  end
end
