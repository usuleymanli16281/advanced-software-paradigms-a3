class LibraryItem
  attr_reader :title, :publication_year

  def initialize(title, publication_year)
    @title = title
    @publication_year = publication_year
  end

  def get_info
    "Title: #{@title}, Year: #{@publication_year}"
  end
end
