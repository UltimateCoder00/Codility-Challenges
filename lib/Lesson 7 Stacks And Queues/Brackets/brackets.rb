def brackets(s)
  brackets_array = s.chars
  open_bracket_chars = ['(', '[', '{']
  close_bracket_chars = [')', ']', '}']

  return 0 if not_properly_nested?(brackets_array, open_bracket_chars, close_bracket_chars)
  properly_nested?(brackets_array, open_bracket_chars, close_bracket_chars)
end

def not_properly_nested?(brackets_array, open_bracket_chars, close_bracket_chars)
  array_length_odd?(brackets_array) || array_starts_with_wrong_parentheses?(brackets_array, close_bracket_chars) || array_ends_with_wrong_parentheses?(brackets_array, open_bracket_chars) || array_has_equal_matching_open_and_close_parentheses?(brackets_array, open_bracket_chars, close_bracket_chars)
end

def array_length_odd?(brackets_array)
  brackets_array.length % 2 == 1
end

def array_starts_with_wrong_parentheses?(brackets_array, close_bracket_chars)
  close_bracket_chars.include? brackets_array[0]
end

def array_ends_with_wrong_parentheses?(brackets_array, open_bracket_chars)
  open_bracket_chars.include? brackets_array[-1]
end

def array_has_equal_matching_open_and_close_parentheses?(brackets_array, open_bracket_chars, close_bracket_chars)
  3.times do |i|
    return true if brackets_array.count(open_bracket_chars[i]) != brackets_array.count(close_bracket_chars[i])
  end

  false
end

def properly_nested?(brackets_array, open_bracket_chars, close_bracket_chars)
  test_array = [brackets_array[0]]

  count = 1

  for i in 1...brackets_array.length
    if open_bracket_chars.include? brackets_array[i]
      test_array << brackets_array[i]
      count += 1
      next
    else
      index = close_bracket_chars.index(brackets_array[i])

      return 0 if open_bracket_chars[index] != test_array[count-1]
      test_array.pop
      count -= 1
    end
  end

  1
end
