def min_avg_two_slice(a)
  array = []
  array2 = []

  for i in 0...(a.length - 1)
    for j in (i+1)...(a.length)
      array << (a[i..j].inject(0, :+) / (j - i + 1.0))
      array2 << i
    end
  end

  array2[array.index(array.min)]
end
