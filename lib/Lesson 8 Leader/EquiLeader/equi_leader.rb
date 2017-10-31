def equi_leader(a)
  count = 0

  for i in 0...(a.length-1)
    next if dominator(a[0..i]) == -1
    next if dominator(a[i+1..-1]) == -1

    if dominator(a[0..i]) == dominator(a[i+1..-1])
      count += 1
    end
  end

  count
end

def dominator(a)
  return -1 if a.count < 1
  b = a.uniq.sort
  c = []

  for i in 0...b.length
    c << a.count(b[i])
  end

  return -1 if c.count(c.max) > 1
  return -1 if a.count(b[c.index(c.max)]) <= a.length / 2

  a[a.index(b[c.index(c.max)])]
end
