#Mortgage Calculator - Calculate the monthly payments of a fixed term mortgage over given Nth terms at a given interest rate. Also figure out how long it will take the user to pay back the loan.

print "How much is the mortgage for? : "
loan = gets.strip.to_f

print "\nHow many months? : "
months = gets.strip.to_f
print "\nWhat annual interest rate? (%) : "
rate = gets.strip.to_f
monthly_rate = (rate / 12) / 100

payment = loan * (monthly_rate * (( 1 + monthly_rate) ** months)) / ((( 1 + monthly_rate) ** months) - 1)

printf("\nYour monthly payment is: $%.3f\n", payment)