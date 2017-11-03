def count_factors(a)
  count = 1

  for i in 1..(a/2)
    count += 1 if a % i == 0
  end

  count
end
