def min_perimeter_rectangle(n)
  perimeter_count(n)
end

def perimeter_count(n, count = 2 + 2*n)
  for i in 2...n/2
    next unless n % i == 0
    value = n / i
    count = 2*i + 2*value if count > 2*i + 2*value
  end

  count
end
