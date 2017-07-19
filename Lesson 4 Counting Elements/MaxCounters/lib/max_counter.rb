def max_counter(n, a)
  a.size.times { a[0] == n+1 ? a.shift : break  }

  (a.length-1).downto(1) { |i| a.delete_at(i) if a[i] == a[i-1] && a[i] > n }

  array = [0]*n

  return array if a.empty?

  max_counter_array_indices = a.each_index.select{|i| a[i] == n+1}

  value = 0
  n_indexes = []

  a.each_with_index do |x,i|
    if x == n+1
      n_indexes << [value,i - 1]
      value = i+1
    end
  end

  counting = []
  counts = 0

  unless max_counter_array_indices.empty?
    n_indexes.each do |x|
      temp = a[x[0]..x[1]].max_by { |k| a[x[0]..x[1]].count(k) }
      counting << a[x[0]..x[1]].count(temp)
    end

    counting.each do |x|
      counts += x
      array.fill(counts)
    end
  end

  if max_counter_array_indices.empty?
    for i in 0...a.length
      array[a[i]-1] += 1
    end
  elsif n_indexes.last[1] + 2 <= a.size
    for i in (n_indexes.last[1] + 2)...a.length
      array[a[i]-1] += 1
    end
  end

  array
end
