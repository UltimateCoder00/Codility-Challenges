def chocolates_by_numbers(n, m)
  count = 0
  return 1 if n == 1
  return n if m == 1

  array = []
  i = 0

  loop do
    array << i
    count += 1
    division = (n - i - 1) / m
    count += division
    i = ( division*m + m + i ) % n
    break if array.include?(i)
  end

  count
end
