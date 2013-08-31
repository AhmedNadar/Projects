#Binary to Decimal and Back Converter - Develop a converter to convert a decimal number to binary or a binary number to its decimal equivalent.

def decimal_to_binary(num)
	quotient = num
	results = []
	binary = ""
	until quotient == 1
		results << quotient % 2
		quotient /= 2
	end
	results << 1
	until results.empty? #acknowledging that ruby has #reverse! but I don't want to use it
		binary << results.pop.to_s
	end
	return binary
end

def binary_to_decimal(binary)
	array = binary.split("")
	decimal = 0
	array.each do |n|
		decimal = decimal * 2 + n.to_i
	end
	return decimal
end

print "Is your number currently decimal or binary? (B/D) : "
current = gets.strip
if current.downcase[0] == "d"
	print "Enter the decimal number to convert to binary : "
	number = gets.strip.to_i
	printf("\nThe binary version of this number is: #{decimal_to_binary(number)}\n")
elsif current[0].downcase == "b"
	print "Enter the binary number to convert to decimal : "
	binary = gets.strip
	printf("\nThe decimal version of this number is: #{binary_to_decimal(binary)}\n")
else puts "You gotta choose one...start the program over and try again"
end
