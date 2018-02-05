def min_perimeter_rectangle(n)
  perimeter_count(n)
end

def perimeter_count(n, count = 2 + 2*n)
  for i in 2...n/2
    count = 2*i + 2*divide(n, i) if small_perimeter?(count, n, i)
  end

  count
end

def small_perimeter?(count, a, b)
   small_perimeter_condition(count, a, b) && divisible?(a, b)
end

def small_perimeter_condition(count, a, b)
  count > 2*b + 2*divide(a, b)
end

def divisible?(a, b)
  a % b == 0
end

def divide(a, b)
  a / b
end
