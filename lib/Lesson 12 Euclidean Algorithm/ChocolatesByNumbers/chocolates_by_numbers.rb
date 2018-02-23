def chocolates_by_numbers(n, m)
  chocolate_count = i = 0
  array = []

  loop do
    array << i
    division = divisibles(n, m, i)
    chocolate_count += division + 1
    i = ( division*m + m + i ) % n
    return chocolate_count if array.include?(i)
  end
end

def divisibles(n, m, i)
  (n - i - 1) / m
end
