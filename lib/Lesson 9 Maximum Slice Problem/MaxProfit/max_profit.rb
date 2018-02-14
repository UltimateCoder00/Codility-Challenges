def max_profit(a)
  return 0 if a.count == 0

  count = 0
  for i in 0...(a.length-1)
    count = [count, a[(i+1)..-1].max - a[i]].max
  end
  count
end
