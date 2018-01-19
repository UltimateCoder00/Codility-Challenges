def passing_cars(a)
  a = remove_redundant_elements(a)
  count = counter(a)
  count <= 1000000000 ? count : -1
end

def remove_redundant_elements(array)
  array = remove_starting_1_elements(array)
  array = remove_ending_0_elements(array)
end

def remove_starting_1_elements(array)
  for i in 0..array.length
    array[0] == 1 ? array.shift : break
  end

  array
end

def remove_ending_0_elements(array)
  for i in 0..array.length
    array.last == 0 ? array.pop : break
  end

  array
end

def counter(a)
  count = 0
  count_ones = 0
  sum = 0

  (a.size-1).downto(0) do |i|
    if a[i] == 1
      count_ones += 1
    else
      sum += count_ones
      count += sum
      count_ones = 0
    end
  end

  count
end
