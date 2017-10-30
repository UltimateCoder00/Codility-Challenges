def dominator(a)
  b = a.uniq.sort
  c = []

  for i in 0...b.length
    c << a.count(b[i])
  end

  return -1 if c.count(c.max) > 1

  a.index(b[c.index(c.max)])
end
