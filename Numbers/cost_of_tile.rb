#Find Cost of Tile to Cover W x H Floor - Calculate the total cost of tile it would take to cover a floor plan of width and height, using a cost entered by the user.

print "Enter a width: "
width = gets.strip.to_f
print "\nEnter a height: "
height = gets.strip.to_f
print "\nEnter a price per square unit: "
cost = gets.strip.to_f
total_cost = width * height * cost
printf("\nTotal cost: $%.2f\n", total_cost)