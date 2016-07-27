def encrypt (string, number)
	user_input = string.split("")
	shift = (number.to_i)%26
	user_input.each do |i|
		if i =~ (/[a-zA-Z]/)
				shift.times do
				i.next!
				end
			end
			if i.length > 1
				i[0] = ''
			end
	end
	puts "Your message '#{string}' has been shifted #{number.to_s} places to '#{user_input.join("")}'."
end

puts "Please enter the message you want to encrypt: "
string = gets.chomp

puts "Please enter a number to encrypt your message with: "
number = gets.chomp.to_i

encrypt(string, number)

# Examples of working encryptions. Test that special characters don't get shifted in the process.

encrypt("Test for A-Z and a-z...!?/", 5)
encrypt("Test for A-Z and a-z...!?/", 30)
encrypt("Test for A-Z and a-z...!?/", -4)
