require 'markit'

puts "What stock do you want to watch? Enter a symbol:"
symbol = gets.strip
stock = MarkIt::Quote.new(symbol)
last = stock.last_price.to_f

loop do
	sleep 10
	stock = MarkIt::Quote.new(symbol)

	puts "#{symbol}: #{stock.last_price.to_f > last ? 'INC' : 'DEC'} #{stock.last_price}"
end