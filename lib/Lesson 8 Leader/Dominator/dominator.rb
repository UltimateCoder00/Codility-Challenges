def dominator(a)
  b = [a.first]

  for i in 1...a.length
    b = b[0..-3] if b[-1] != b[-2] unless b.length <= 1
    b << a[i]
  end

  a.count(b.first) > (a.length / 2) ? a.index(b.first) : -1
end
