def sort_numbers(numbers, order)
  sorted_numbers = numbers.sort

  if order.downcase == 'd'
    sorted_numbers.reverse!
  end

  sorted_numbers
end

print "Enter your sequence divided by coma: "
input = gets.chomp
numbers = input.split(',').map(&:to_i)

print "Select the sort order ('a' for ascending, 'd' for descending): "
order = gets.chomp

sorted_numbers = sort_numbers(numbers, order)
puts "Sorted sequence: #{sorted_numbers.join(', ')}"
