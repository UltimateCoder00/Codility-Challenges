def nesting(a)
  return 0 if a[0] == ")"
  return 0 if a[-1] == "("
  return 0 if a.length % 2 == 1

  array = a.split("")

  count = array.count

  while array.count > 0
    count2 = array.count

    for i in 0...array.length
      if array[i] == "("
        if array[i+1] == ")"
          array.delete_at(i+1)
          array.delete_at(i)
          count -= 2
          break
        end
      end
    end

    return 0 if count2 != count + 2
  end

  1
end
