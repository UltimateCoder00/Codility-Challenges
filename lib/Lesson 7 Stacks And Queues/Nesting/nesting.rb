def nesting(s)
  return 1 if empty_string?(s)
  return 0 if obvious_wrong_nesting?(s)
  correct_nesting?(s) == false ? 0 : 1
end

def empty_string?(string)
  string.length == 0
end

def obvious_wrong_nesting?(string)
  obvious_wrong_nesting_condition1?(string) || obvious_wrong_nesting_condition2?(string) || obvious_wrong_nesting_condition3?(string)
end

def obvious_wrong_nesting_condition1?(string)
  string.length % 2 == 1
end

def obvious_wrong_nesting_condition2?(string)
  string[0] == ')' || string[-1] == '('
end

def obvious_wrong_nesting_condition3?(string)
  string.count('(') != string.count(')')
end

def correct_nesting?(string)
  brackets_array = string.chars

  test_array = [brackets_array[0]]
  count = 1

  for i in 1...brackets_array.length
    if brackets_array[i] == '('
      test_array << brackets_array[i]
      count += 1
      next
    end

    return false if test_array.count == 0
    test_array.pop
    count -= 1
  end
end
