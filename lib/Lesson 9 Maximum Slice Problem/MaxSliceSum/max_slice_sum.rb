def max_slice_sum(a)
  count = a[0]
  for i in 0...a.length
    count = max_slice_sum_inner_loop(a, i, count)
  end
  count
end

def max_slice_sum_inner_loop(a, i, count)
  for j in i...a.length
    count = [count, array_sum(a, i, j)].max
  end
  count
end

def array_sum(a, i, j)
  a[i..j].inject(:+)
end
