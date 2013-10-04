

def reverse_string(string)
	#the easiest way to do this in Ruby is to call #reverse
	#string.reverse

	#or to not use this cause it's kinda cheating...
	chars = string.each_char.to_a
	string = ""
	until chars.empty?
		string << chars.pop
	end
	return string
end

puts "Enter a string: "
string = gets.strip
puts "#{reverse_string(string)}"