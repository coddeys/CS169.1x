class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn,price)
    raise ArgumentError.new("Not valid number") if price.to_i <= 0
    raise ArgumentError.new("ISBN is empty") if isbn.empty?
    @isbn = isbn 
    @price = price
  end
  
  def price_as_string
    "$" + '%.2f' % price.to_f
  end

end
