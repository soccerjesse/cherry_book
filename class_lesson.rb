class Product 
  DEFAULT_PRICE = 0

  attr_reader :name, :price

  def self.default 
    DEFAULT_PRICE
  end

  def initialize(name,price = DEFAULT_PRICE)
    @name  = name
    @price = price
  end
end

puts Product.default

product = Product.new("movie price")
puts product.price
