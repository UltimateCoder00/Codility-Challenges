def max_counter(n, a)
  number = a.count(n+1)

  if (number / (a.size*1.0)) >= ((a.size * 0.1) / a.size)
    (a.length-1).downto(1) do |x|
      if a[x] > n
        a.delete_at(x) if a[x] == a[x-1]
      end
    end
  end

  array = [0]*n

  unless a[0] == n+1
    value = 0

    n_indexes = []
    a.each_with_index do |x,i|
      if x == n+1
        n_indexes << [value,i - 1] if i > 0
        n_indexes << [value,0] if i == 0
        value = i+1
      end
    end

    counting = []
    counts = 0

    if number > 0
      n_indexes.each do |x|
        temp = a[x[0]..x[1]].max_by { |k| a[x[0]..x[1]].count(k) }
        counting << a[x[0]..x[1]].count(temp)
      end

      counting.each do |x|
        counts += x
        array.fill(counts)
      end
    end

    if n_indexes.empty?
      for i in 0...a.length
        array[a[i]-1] += 1
      end
    elsif n_indexes.last[1] + 2 <= a.size
      for i in (n_indexes.last[1] + 2)...a.length
        array[a[i]-1] += 1
      end
    end
  end

  array
end
