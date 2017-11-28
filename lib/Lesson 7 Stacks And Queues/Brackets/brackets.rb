def brackets(s)
  return 1 if s.length == 0

  brackets_array = s.chars
  return 0 if brackets_array.length % 2 == 1
  open_bracket_chars = ['(', '[', '{']
  close_bracket_chars = [')', ']', '}']

  return 0 if close_bracket_chars.include? brackets_array[0]
  return 0 if open_bracket_chars.include? brackets_array[-1]

  3.times do |i|
    return 0 if brackets_array.count(open_bracket_chars[i]) != brackets_array.count(close_bracket_chars[i])
  end

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
