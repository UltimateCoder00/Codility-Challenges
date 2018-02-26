def dominator(a)
  b = [a.first]

  for i in 1...a.length
    b = new_array(b)
    b << a[i]
  end

  a.count(b.first) > (a.length / 2) ? a.index(b.first) : -1
end

def new_array(b)
  return b[0..-3] if b[-1] != b[-2] unless b.length <= 1
  b
end
