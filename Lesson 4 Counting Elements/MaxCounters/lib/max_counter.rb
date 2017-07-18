def max_counter(n, a)
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
