require 'nokogiri'
require 'open-uri'

puts "What's your horoscope sign? Enter your zodiac: "
sign = gets.strip

doc = Nokogiri::HTML(open("http://my.horoscope.com/astrology/free-daily-horoscope-#{sign}.html"))
horoscope = doc.css('div#textline').text
if horoscope.strip.empty?
	puts "Oops, make sure you have the right zodiac"
else
	puts horoscope
end