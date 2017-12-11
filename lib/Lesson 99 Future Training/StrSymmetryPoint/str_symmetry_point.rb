def str_symmetry_point(s)
  return 0 if s.length == 1
  return -1 if s.length == 0

  array = s.chars
  last = array.length - 1
  middle = -1

  if s.length % 2 == 1
    middle = array.length / 2
  end

  count = 0

  for i in 0...s.length
    count = i

    break if i == middle

    if array[i] == array[last]
      last -= 1
      next
    else
      break
    end
  end

  count
end
