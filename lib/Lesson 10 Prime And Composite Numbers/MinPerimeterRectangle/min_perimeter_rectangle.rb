def min_perimeter_rectangle(n)
  count = 2 + 2*n

  for i in 2...n
    if n % i == 0
      value = n / i

      count = 2*i + 2*value if count > 2*i + 2*value
    end
  end

  count
end
