def max_counter(n, a)
  array = [0]*n

  a = remove_redundant_max_counters(n, a)

  return array if a.empty?
  return increment_counters_for_array_with_no_max_counters(a, array) unless a.include?(n+1)

  max_counters = get_array_indices_of_max_counters(n, a)
  max_counter_ranges = get_range_between_max_counter_elements_in_array(max_counters)

  increment_counters(max_counter_ranges, array, a)
end

def remove_redundant_max_counters(n, a)
  (a.length-1).downto(1) { |i| a.delete_at(i) if a[i] == a[i-1] && a[i] > n }
  a.shift if a[0] == n+1
  a
end

def increment_counters_for_array_with_no_max_counters(a, array)
  a.each_with_object(Hash.new(0)){ |m,h| h[m] += 1 }.sort_by{ |k,v| v }.each { |element| array[element[0]-1] += element[1] }
  array
end

def get_array_indices_of_max_counters(n, a)
  a.each_index.select{ |i| a[i] == n+1 }
end

def get_range_between_max_counter_elements_in_array(max_counters)
  max_counter_ranges = [[0,max_counters[0]-1]]

  for i in 0...(max_counters.length-1)
    max_counter_ranges << [max_counters[i]+1, max_counters[i+1]-1]
  end

  max_counter_ranges
end

def increment_counters(max_counter_range, array, a)
  counting = []

  max_counter_range.each do |x|
    counting << a[x[0]..x[1]].count(a[x[0]..x[1]].max_by { |i| a[x[0]..x[1]].count(i) })
  end

  counts = 0

  counting.each do |x|
    counts += x
    array.fill(counts)
  end

  for i in (max_counter_range.last[1] + 2)...a.length
    array[a[i]-1] += 1
  end

  array
end
