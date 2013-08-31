#Distance Between Two Cities - Calculates the distance between two cities and allows the user to specify a unit of distance. This program may require finding coordinates for the cities like latitude and longitude.

#We're going to use the geocoder gem. Sorry. The other way to do this would be to use HTTParty, send a request to Google Maps, get back a Geocoder result for each of the locations, then run the distance formula to return a distance.

require 'geocoder'

print "What is the address of the first location? : "
address1 = gets.strip
coords1 = Geocoder.coordinates(address1)
print "\nWhat is the address of the second location? : "
address2 = gets.strip
coords2 = Geocoder.coordinates(address2)
printf("\nThe distance between #{address1} and #{address2} is %.2f miles\n", Geocoder::Calculations.distance_between(coords1, coords2))