def counting_sort(arr)
  max_value = arr.max
  min_value = arr.min
  range = max_value - min_value + 1

  count = Array.new(range, 0)
  output = Array.new(arr.length)

  arr.each { |value| count[value - min_value] += 1 }

  (1...range).each { |i| count[i] += count[i - 1] }

  (arr.length - 1).downto(0) do |i|
    output[count[arr[i] - min_value] - 1] = arr[i]
    count[arr[i] - min_value] -= 1
  end

  output
end

puts "Enter your array divided by coma:"
input_str = gets.chomp
input_arr = input_str.split(',').map(&:to_i)

sorted_arr = counting_sort(input_arr)

puts "Your original array: #{input_arr}"
puts "Your sorted array: #{sorted_arr}"
