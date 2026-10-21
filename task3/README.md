# Task 3 — Library Catalog System

## Description
This task implements a simple library catalog system in Ruby using Object-Oriented Programming (OOP). The system supports three types of items: Books, DVDs and CDs.

## Implementation

- `LibraryItem` is the base class with common properties.
- `Book`, `DVD`, and `CD` inherit from `LibraryItem` and have their own additional properties.
-  Each item type implements `display_info`.
- `Library` provides methods to add, remove and display items.

The implementation demonstrates inheritance, encapsulation, and polymorphism.

## Testing

The `main.rb` file creates different library items, displays their information, adds them to the library, removes an item and displays the updated collection.

## Reference

- [RubyGuides — Object-Oriented Programming in Ruby](https://www.rubyguides.com/ruby-tutorial/object-oriented-programming/)
- [Ruby Documentation — Array#reject](https://ruby-doc.org/core-2.6.7/Array.html)
