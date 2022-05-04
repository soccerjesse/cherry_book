def to_hex(r,g,b)
  # '#' + 
  # r.to_s(16).rjust(2,'0') +
  # g.to_s(16).rjust(2,'0') +
  # b.to_s(16).rjust(2,'0') 

  # hex = '#'
  # [r,g,b].each do |h|
  #   hex += h.to_s(16).rjust(2,'0')
  # end
  # hex

  [r,g,b].sum('#') do |h|
    h.to_s(16).rjust(2,'0')
  end
end

def to_ints(h)
  # r = h[1..2]
  # g = h[3..4]
  # b = h[5..6]
  # int = []
  # [r,g,b].each do |i|
  #   int << i.hex
  # end
  # int

  # r = h[1..2]
  # g = h[3..4]
  # b = h[5..6]

  # [r,g,b].map do |h|
  #   h.hex
  # end

  # r,g,b = h[1..2],h[3..4],h[5..6]

  # [r,g,b].map do |s|
  #   s.hex
  # end

  # r,g,b = h.scan(/\w\w/)
  # [r,g,b].map do |h|
  #   h.hex
  # end

  h.scan(/\w\w/).map(&:hex)
end