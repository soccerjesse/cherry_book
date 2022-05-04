def number(n)
  if n % 15 == 0
    "Fizz Buzz"
  elsif n % 3 == 0
    "Fizz"
  elsif n % 5 == 0
    "Buzz"
  else
    n.to_s
  end
end

# puts number(1)
# puts number(2)
# puts number(3)
# puts number(4)
# puts number(5)
# puts number(15)

