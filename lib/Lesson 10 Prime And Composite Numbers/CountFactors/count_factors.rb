def count_factors(a)
  count = 2

  for i in 2..(a/2)
    count += 1 if a % i == 0
  end

  count
end
