puts 'Hello, world'

puts 'Hello, Ruby'.index 'Ruby'

puts "Niclas\n" * 10

(1..10).each { |i| puts "This is sentence number #{i}" }

puts 'Guess a number between 0 and 9: '
correct = rand(10)

while guess = gets.to_i and guess != correct
  puts "Too #{guess > correct ? 'high' : 'low'}."
end
