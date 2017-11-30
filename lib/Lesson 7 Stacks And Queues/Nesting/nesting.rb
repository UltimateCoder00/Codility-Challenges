def nesting(s)
  return 1 if s.length == 0
  return 0 if s.length % 2 == 1
  return 0 if s[0] == ')'
  return 0 if s[-1] == '('

  brackets_array = s.chars

  test_array = [brackets_array[0]]
  count = 1

  for i in 1...brackets_array.length
    if brackets_array[i] == '('
      test_array << brackets_array[i]
      count += 1
      next
    else
      return 0 if test_array.count == 0

      test_array.pop
      count -= 1
    end
  end

  1
end
