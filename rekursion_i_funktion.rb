def fib(x)
	if x == 0
		return x
	elsif x == 1
		return x
	else 
		return fib(x-1) + fib(x-2)
	end
end

def factorial(n)
	if n <= 1
		return 1
	else 
		return n * factorial(n - 1)
	end
end

#start = Time.now
#puts fib(ARGV[0].to_i)
puts factorial(ARGV[0].to_i)
#puts Time.now - start
