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

# puts Product.default

product = Product.new("movie price")
# puts product.price

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    "hello #{name}"
  end

  def hi
    "hi #{self.name}"
  end

  def my_name
    "my name is #{@name}"
  end
end

user = User.new('Alice')

class Price
  attr_reader :name, :price

  def initialize(name, price)
    @name  = name
    @price = price
  end

  def self.format_price(price)
    "#{price}円"
  end

  def to
    formatted = Price.format_price(price)
    "name:#{name} price:#{formatted}"
  end
end

price = Price.new("pc",10000)

puts price.to