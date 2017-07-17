def missing_integer(a)
  a = a.uniq.sort

  for i in 1..a.length
    return i if a[i-1] != i
  end
end
