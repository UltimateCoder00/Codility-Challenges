def stone_wall(h)
  return 1 if h.length == 1
  return 1 if h.uniq.length == 1

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
      if h[i] >= value
        h[i] -= value
      else
        break
      end
    end
  end

  count
end
