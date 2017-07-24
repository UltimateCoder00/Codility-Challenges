def count_divisibles(a, b, k)
  count = 0

  unless a == 0
    return count if k > b
  else
    return 1 if k > b
  end

  if a < k
    unless a == 0
      a = k
    else
      a = k
      count += 1
    end
  end

  for i in a..b
    count += 1 if i % k == 0
  end

  count
end
