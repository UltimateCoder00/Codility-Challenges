def chocolates_by_numbers(n, m)
  count = 0

  array = [*0...10]
  i = 0

  loop do
    count += 1
    array[i] = nil
    if i + m <= n
      i = i + m
    else
      i = i + m - n
    end

    break if array[i] == nil
  end

  count
end
