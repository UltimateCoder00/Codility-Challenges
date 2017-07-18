def max_counter(n, a)
  (a.length-1).downto(1) do |x|
    if a[x] > n
      a.delete_at(x) if a[x] == a[x-1]
    end
  end

  array = [0]*n

  for i in 0...a.length
    unless a[i] > n
      array[a[i]-1] += 1
    else
      array.fill array.max
    end
  end

  array
end
