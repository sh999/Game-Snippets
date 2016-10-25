# Simple guessing game in Ruby
puts "Guess my number = "
guess = gets.chomp
guess = guess.to_i
correctNumber = 80
puts "Your guess is #{guess}"
correct = false
while correct == false
	if guess < correctNumber
		puts "Guess is too low"
	elsif guess > correctNumber
		puts "Guess is too high"
	elsif guess == correctNumber
		puts "Correct!"
		correct = true
	end
	if correct == false
		puts "Guess again "
		guess = gets.chomp
		guess = guess.to_i
	end
end