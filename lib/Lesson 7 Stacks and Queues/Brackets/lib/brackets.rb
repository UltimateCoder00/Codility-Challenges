def brackets(s)
  return 0 if s.length % 2 == 1

  array = s.split("")
  return 0 unless array.count("(") == array.count(")")
  return 0 unless array.count("{") == array.count("}")
  return 0 unless array.count("[") == array.count("]")

  return 0 if array[0] == ")"
  return 0 if array[0] == "}"
  return 0 if array[0] == "]"

  return 0 if array[-1] == "("
  return 0 if array[-1] == "{"
  return 0 if array[-1] == "["

  while array.count > 0
    p array
    for i in 0...(array.length-1)
      if array[i] == '('
        if array[i+1] == ']'
          return 0
        elsif array[i+1] == '}'
          return 0
        elsif array[i+1] == ')'
          array.delete_at(i+1)
          array.delete_at(i)
          break
        end
      elsif array[i] == '{'
        if array[i+1] == ']'
          return 0
        elsif array[i+1] == '}'
          array.delete_at(i+1)
          array.delete_at(i)
          break
        elsif array[i+1] == ')'
          return 0
        end
      elsif array[i] == '['
        if array[i+1] == ']'
          array.delete_at(i+1)
          array.delete_at(i)
          break
        elsif array[i+1] == '}'
          return 0
        elsif array[i+1] == ')'
          return 0
        end
      end
    end

    break
  end

  1
end
