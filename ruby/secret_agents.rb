name = "bigfoot"
name = name.gsub(/./) do |word|
  word.next
end
puts name