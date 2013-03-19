def square(number)
	return number ** 2
end

def multiply_by_self(number)
	return square(number)
end

puts square(ARGV[0].to_i)
puts multiply_by_self(ARGV[0].to_i)