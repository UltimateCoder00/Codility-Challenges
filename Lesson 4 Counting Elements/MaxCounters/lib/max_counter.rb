def max_counter(n, a)
  a.size.times { a[0] == n+1 ? a.shift : break  }

  (a.length-1).downto(1) { |i| a.delete_at(i) if a[i] == a[i-1] && a[i] > n }

  array = [0]*n

  return array if a.empty?

  max_counters = a.each_index.select{ |i| a[i] == n+1 }

  if max_counters.empty?
    a.each_with_object(Hash.new(0)){ |m,h| h[m] += 1 }.sort_by{ |k,v| v }.each { |element| array[element[0]-1] += element[1] }

    return array
  end

  max_counter_range = [[0,max_counters[0]-1]]

  for i in 0...(max_counters.length-1)
    max_counter_range << [max_counters[i]+1, max_counters[i+1]-1]
  end

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
