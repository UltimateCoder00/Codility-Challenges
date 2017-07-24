def count_divisibles(a, b, k)
  count = 0
  for i in a..b
    count += 1 if i % k == 0
  end

  count
end
