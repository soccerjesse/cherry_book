class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name  = name
    @price = price
  end

  def to
    "#{name}:#{price}"
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name,price,running_time)
    super(name,price)
    @running_time = running_time
  end

  def to
    "#{super}:#{running_time}"
  end
end

dvd = DVD.new('movie', 1200, 100)

puts dvd.name
puts dvd.price
puts dvd.running_time
puts dvd.to

class Pro

  private

  def name
    "a greate movie"
  end
end

class Pr < Pro
  def to_s
    "#{name}:Pro"
  end

  private
  
  def name #オーバーライド
    "Pr: bad movie"
  end
end

class Weight
  def initialize(name,weight)
    @name = name
    @weight = weight
  end

  #attr_reader :name

  def heavier_than?(other)
    other.weight < @weight
  end

  protected
  #同じクラスの中でのみ体重を公開！
  #protected attr_reader :weight

  def weight
    @weight
  end
end

alice = Weight.new("alice", 60)
bob   = Weight.new("bob", 55)

puts alice.heavier_than?(bob)
puts bob.heavier_than?(alice)

class Alias
  def hello
    'hello'
  end

  alias greet hello
end

a = Alias.new
puts a.hello
puts a.greet

class H
  def name
    'alice'
  end
end

def dis(u)
  puts "#{u.name}::?"
end

h = H.new
dis(h)