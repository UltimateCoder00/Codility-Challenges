def passing_cars(a)
  for i in 0..a.length
    a[0] == 1 ? a.shift : break
  end

  for i in 0..a.length
    a.last == 0 ? a.pop : break
  end

  count = 0
  count_ones = 0
  sum = 0

  (a.size-1).downto(0) do |i|
    if a[i] == 1
      count_ones += 1
    else
      sum += count_ones
      count += sum
      count_ones = 0
    end
  end

  count <= 1000000000 ? count : -1
end
