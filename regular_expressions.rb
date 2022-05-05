#正規表現!!!!!

text = <<-TEXT
電話：03(1234)5678
？？：9999-99-9999
？？：03(1234-5678
TEXT

t = text.scan(/0[1-9]\d{0,3}[-(]\d{1,4}[-)]\d{4}/)
puts t

text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT

t2 = text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)
puts t2

html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML

t3 = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')
puts t3

text = <<-TEXT
def hello(name)
  puts "Hello, \#{name}!"
end

hello('Alice')
     
hello('Bob')
	
hello('Carol')
TEXT

puts text.gsub(/^[ \t]+$/, '')

text = '私の誕生日は1998年4月17日です'

if m = /(\d+)年(\d+)月(\d+)日/.match(text)
  puts 'マッチしました'
else
  puts 'no'
end

if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}:#{month}:#{day}"
end

text.gsub(/(\d+)年(\d+)月(\d+)日/) do
  puts "#{$1}/#{$2}/#{$3}"
end