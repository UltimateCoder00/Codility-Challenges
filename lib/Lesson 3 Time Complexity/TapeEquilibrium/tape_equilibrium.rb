def tape_equilibrium(a)
  start_sum, end_sum = sum_array_parts(a)
  min_difference = calculate_difference(start_sum, end_sum)

  for i in 1...a.length
    start_sum += a[i]
    end_sum -= a[i]

    min_difference = [min_difference, calculate_difference(start_sum, end_sum)].min
  end

  min_difference
end

def sum_array_parts(a)
  [a.first, a.inject(0, :+) - a.first]
end

def calculate_difference(start_sum, end_sum)
  (start_sum-end_sum).abs
end
