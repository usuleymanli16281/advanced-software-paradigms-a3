class LibraryItem
  attr_reader :title, :author, :publication_year

  def initialize(title, author, publication_year)
    @title = title
    @author = author
    @publication_year = publication_year
  end

  def get_info
    "Title: #{@title}, Author: #{@author}, Year: #{@publication_year}"
  end
end
