def dominator(a)
  return 0 if a.count == 1
  return -1 if a.count == 2

  b = [a.first]

  for i in 1...a.length
    if b.length <= 1
      b << a[i]
    else
      if b[-1] != b[-2]
        b.pop
        b.pop
      end
      b << a[i]
    end
  end

  max_number = b.first
  a.count(max_number) > a.length/2 ? a.index(max_number) : -1
end
