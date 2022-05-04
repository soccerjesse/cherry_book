puts 1 + 2

a = "hello, world"
puts a 

b = "こんにちは"
puts b


def find(country)
  c = { jp: "yen", us: "dor" }
  c[country]
end

def show(country)
  ss = find(country)
  if ss ||= 'hello'
    ss&.upcase
  end
end

puts show(:jp)
puts show(:usa)