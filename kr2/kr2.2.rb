def generate_password(length)
  characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + ['!', '@', '#', '$', '%', '^', '&', '*']

  password = Array.new(length) { characters.sample }
  password.join
end

print "Enter password length: "
password_length = gets.chomp.to_i

generated_password = generate_password(password_length)
puts "Your generated password: #{generated_password}"
