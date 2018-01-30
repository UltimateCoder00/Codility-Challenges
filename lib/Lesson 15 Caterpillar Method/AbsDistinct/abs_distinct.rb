def abs_distinct(a)
  for i in 0...a.length
    a[i] < 0 ? a[i] = a[i]*-1 : break
  end

  a.uniq.count
end
