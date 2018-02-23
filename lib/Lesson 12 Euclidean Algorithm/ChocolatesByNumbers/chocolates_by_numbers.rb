def chocolates_by_numbers(n, m)
  count = 0

  array = [*0...n]
  i = 0

  loop do
    count += 1
    array[i] = nil
    i + m <= n ? i = i + m : i = (i + m) % n
    break if array[i].nil?
  end

  count
end
