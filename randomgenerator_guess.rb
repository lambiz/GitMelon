tal = rand(100)+1
puts "Guess the number"
guess = gets.to_i
guesses = 1
while guess != tal
	if guess < tal
		puts "Higher" 
		puts "Guess again"
	else
		puts "Lower" 
		puts "Guess again"
	end
	guess = gets.to_i	
	guesses = guesses + 1
end
puts "Correct!"
puts "Number of guesses:#{guesses}"