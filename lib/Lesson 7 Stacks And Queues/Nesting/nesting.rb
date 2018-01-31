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

def correct_nesting?(string, count=1, brackets_array=string.chars, test_array=[brackets_array[0]])
  for i in 1...brackets_array.length
    return false if test_array.count == 0 unless correctly_open?(brackets_array[i])
    correctly_open?(brackets_array[i]) ? test_array << brackets_array[i] : test_array.pop
    correctly_open?(brackets_array[i]) ? count += 1 : count -= 1
  end
end

def correctly_open?(string)
  string == '('
end
