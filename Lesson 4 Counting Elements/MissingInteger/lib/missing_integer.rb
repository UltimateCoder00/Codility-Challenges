def missing_integer(a)
  a = a.uniq.sort

  a.select! { |x| x > 0 }

  return 1 if a.empty?

  for i in 1..a.length
    return i if a[i-1] != i
  end

  return a.length + 1
end
