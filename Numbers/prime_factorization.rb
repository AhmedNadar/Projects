#Prime Factorization - Have the user enter a number and find all Prime Factors (if there are any) and display them.

def is_prime?(n)
	(2..Math.sqrt(n)).to_a.each do |divisor|
		if n % divisor == 0
			return false
		end
	end
	return true
end

def is_factor?(num, factor)
	num % factor == 0 ? true : false
end

def find_prime_factors(n)
	prime_factors = []
	(2..n/2).to_a.each do |i|
		if is_prime?(i) && is_factor?(n, i)
			prime_factors << i
		end
	end
	puts prime_factors
end

print "Enter a number pleaseeee: \n"
number = gets.strip.to_i
find_prime_factors(number)
