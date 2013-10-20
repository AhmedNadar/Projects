def palindrome?(string)
	#in ruby, we can just see if string.reverse == string. but let's try harder than that, shall we?
	#return string.reverse == string
	f = 0
	l = string.size - 1
	until l <= f
		return false if string[f] != string[l]
		f += 1
		l -= 1
	end
	return true
end

puts "Enter a string: "
string = gets.strip.downcase
if palindrome?(string)
	puts "#{string} is a palindrome."
else
	puts "#{string} is not a palindrome."
end

