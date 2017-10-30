def dominator(a)
  return -1 if a.count < 1
  b = a.uniq.sort
  c = []

  for i in 0...b.length
    c << a.count(b[i])
  end

  return -1 if c.count(c.max) > 1
  return -1 if a.count(b[c.index(c.max)]) <= a.length / 2

  a.index(b[c.index(c.max)])
end
