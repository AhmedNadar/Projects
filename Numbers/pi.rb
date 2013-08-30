#Find PI to the Nth Digit - Enter a number and have the program generate PI up to that many decimal places. Keep a limit to how far the program will go.

#This implementation will get input from the user and use a Machin-like Formula to generate pi

print "How many decimals?\n"
decimal_count = gets.strip.to_i

if decimal_count > 100
	puts "John Machin used this formula to generate pi to 100 decimal places. We're not going further than that"
else
	pi = (4 * (4 * Math.atan(1.0/5.0) - Math.atan(1.0/239.0)))
	printf("%.#{decimal_count}f", pi)
	print "\n"
end