def equi_leader(a)
  count = 0

  for i in 0...(a.length-1)
    part1 = dominator(a[0..i])
    next if part1 == -1
    part2 = dominator(a[i+1..-1])
    next if part2 == -1
    count += 1 if part1 == part2
  end

  count
end

def dominator(a)
  b = [a.first]

  for i in 1...a.length
    b = new_array(b)
    b << a[i]
  end

  a.count(b.first) > (a.length / 2) ? b.first : -1
end

def new_array(b)
  return b[0..-3] if b[-1] != b[-2] unless b.length <= 1
  b
end
