require_relative 'library_item'

class CD < LibraryItem
  def initialize(title, publication_year, artist, track_count)
    super(title, publication_year)
    @artist = artist
    @track_count = track_count
  end

  def display_info
    puts "#{get_info}, Artist: #{@artist}, Tracks: #{@track_count}"
  end
end
