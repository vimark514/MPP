def RPN(str)
  rev = []
  oper = []
  flag = 0
  str = str.gsub(/\s+/, '')
  str.each_char do |symb|
    case symb
    when /\d/
      rev.append(symb)
    when '+', '-', '*', '/'
      if flag == 1
        oper.append(symb)
      else
        while oper.any? && priority(symb) <= priority(oper.last)
          rev.append(oper.pop)
        end
        oper.append(symb)
      end
    when '('
      flag = 1
    when ')'
      while oper.any? && oper.last != '('
        rev.append(oper.pop)
      end
      oper.pop
      flag = 0
    end
  end

  while oper.any?
    rev.append(oper.pop)
  end

  return rev.join(' ')
end

def priority(oper)
  case oper
  when '+', '-'
    return 1
  when '*', '/'
    return 2
  else
    return 0
  end
end

puts RPN("(1 + 2) * (3 + 4)")

