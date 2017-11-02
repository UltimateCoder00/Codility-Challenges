def max_profit(a)
  count = 0

  for i in 0...(a.length-1)
    for j in (i+1)...a.length
      count = a[j] - a[i] if a[j] - a[i] > count
    end
  end

  count
end
