def abs_distinct(a)
  for i in 0...a.length
    if a[i] < 0
      a[i] = a[i]*-1
    else
      break
    end
  end

  a.uniq.count
end
