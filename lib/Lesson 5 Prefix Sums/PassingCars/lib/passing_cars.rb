def passing_cars(a)
  array = []

  for i in 0..a.length
    a[0] == 1 ? a.shift : break
  end

  for i in 0..a.length
    a.last == 0 ? a.pop : break
  end

  count = 0
  count_ones = 0

  (a.size-1).downto(0) do |i|
    if a[i] == 1
      count_ones += 1
    else
      array << count_ones
      count += array.inject(0, :+)
      count_ones = 0
    end
  end

  count
end
