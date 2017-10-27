def brackets(s)
  return 0 if s.length % 2 == 1

  array = s.split("")

  while array.count > 0
    for i in 0...(array.length-1)
      if array[i] == '('
        if array[i+1] == ']'
          return 0
        elsif array[i+1] == '}'
          return 0
        elsif array[i+1] == ')'
          array.delete_at(i+1)
          array.delete_at(i)
          next
        end
      elsif array[i] == '{'
        if array[i+1] == ']'
          return 0
        elsif array[i+1] == '}'
          array.delete_at(i+1)
          array.delete_at(i)
          next
        elsif array[i+1] == ')'
          return 0
        end
      elsif array[i] == '['
        if array[i+1] == ']'
          array.delete_at(i+1)
          array.delete_at(i)
          next
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
