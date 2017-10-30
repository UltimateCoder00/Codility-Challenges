def dominator(a)
  b = a.uniq.sort
  c = []

  for i in 0...b.length
    c << a.count(b[i])
  end
  
  a.index(b[c.index(c.max)])
end
