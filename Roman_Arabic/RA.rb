def roman_to_int(roman)
  roman_numerals = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  result = 0
  prev_value = 0

  roman.reverse.each_char do |char|
    value = roman_numerals[char]
    if !value
      puts "Invalid Roman numeral: #{roman}"
      return
    end
    if value < prev_value
      result -= value
    else
      result += value
    end
    prev_value = value
  end
  result
end

def int_to_roman(num)
  roman_numerals = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  result = ''

  roman_numerals.each do |value, numeral|
    while num >= value
      result += numeral
      num -= value
    end
  end
  result
end

print "Enter roman or european: "
user_input = gets.chomp

if user_input.match?(/^\d+$/)
  puts "Your roman number: #{int_to_roman(user_input.to_i)}"
elsif user_input.match?(/^[IVXLCDM]+$/)
  puts "Your european number: #{roman_to_int(user_input)}"
else
  puts "Wrong input!"
end
