class Library
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def remove_item(title)
    @items.reject! { |item| item.title == title }
  end

  def display_all_items
    @items.each do |item|
      item.display_info
    end
  end
end
