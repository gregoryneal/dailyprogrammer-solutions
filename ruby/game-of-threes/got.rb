#https://www.reddit.com/r/dailyprogrammer/comments/3r7wxz/20151102_challenge_239_easy_a_game_of_threes/

starting_number = ARGV[0].to_i | 100

while starting_number != 1 do
	print starting_number
	if(starting_number%3 == 0)
		starting_number /= 3
		puts " #{0}"
	elsif((starting_number+1)%3==0)
		starting_number += 1
		puts " #{-1}"
	else
		starting_number -= 1
		puts " #{+1}"
	end
end

puts starting_number