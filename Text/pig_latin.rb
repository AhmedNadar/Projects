def pig_latin(string)
  word = string.each_char.to_a
  vowels = ["a", "e", "i", "o", "u"]
  while !vowels.include?(word.first)
    word.push(word.shift)
  end
  word.push("ay").join
end

puts "Enter a string: "
string = gets.strip
puts "#{pig_latin(string)}"