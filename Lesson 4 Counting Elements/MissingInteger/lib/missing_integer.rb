def missing_integer(a)
  a.select! { |x| x > 0 }
  return 1 if a.empty?

  a.sort!.uniq!

  for i in 1..(a.length+1)
    return i if a[i-1] != i
  end
end
