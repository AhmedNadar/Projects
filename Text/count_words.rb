def word_count(string)
  string.gsub!(/\W/, ' ')
  string.split(" ").length
end

#String input

#puts "Enter a string: "
#string = gets.strip
#puts "There are #{word_count(string)} words in the string"

puts "Where is the file? "
filepath = gets.strip
totalwords = 0
IO.foreach(filepath) do |line|
  totalwords += word_count(line)
end
puts "There are #{totalwords} words in the file"