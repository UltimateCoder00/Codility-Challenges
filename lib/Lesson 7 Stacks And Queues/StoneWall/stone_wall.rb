def stone_wall(h)
  return 1 if simple_case?(h)

  count = 0

  while true
    break if h.count == 0
    if h[0] == 0
      h.shift
      next
    end

    value = h[0]
    count += 1
    h.shift

    for i in 0...h.length
      h[i] >= value ? h[i] -= value : break
    end
  end

  count
end

def simple_case?(array)
  simple_condition1?(array) || simple_condition2?(array)
end

def simple_condition1?(array)
  array.length == 1
end

def simple_condition2?(array)
  array.uniq.length == 1
end
