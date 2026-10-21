require_relative 'book'
require_relative 'dvd'
require_relative 'cd'
require_relative 'library'

book = Book.new("Concepts of Programming Languages", 2015, "Robert Sebesta", "Programming")
dvd = DVD.new("Inception", 2010, "Christopher Nolan", 148)
cd = CD.new("A Day at the Races", 1976, "Queen", 10)

puts "Individual library items:"
book.display_info
dvd.display_info
cd.display_info

library = Library.new

library.add_item(book)
library.add_item(dvd)
library.add_item(cd)

puts "\nAll library items:"
library.display_all_items

library.remove_item("Inception")

puts "\nAfter removing Inception:"
library.display_all_items
