def str_symmetry_point(s)
  return 0 if s.length == 1
  return -1 if s.length == 0

  array = s.chars
  last = array.length - 1
  middle = -1
  no_middle = -1

  if s.length % 2 == 1
    middle = array.length / 2
  else
    no_middle = array.length / 2
  end

  count = 0

  for i in 0...s.length
    count = i

    break if i == middle

    if array[i] == array[last]
      if no_middle != -1
        return -1 if no_middle == i
      end

      last -= 1
      next
    else
      return -1 if i < array.length / 2
      break
    end
  end

  count
end
