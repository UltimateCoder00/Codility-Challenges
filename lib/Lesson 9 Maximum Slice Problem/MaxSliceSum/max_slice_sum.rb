def max_slice_sum(a)
  count = a[0]
  for i in 0...a.length
    count = max_slice_sum_inner_loop(a, i, count)
  end
  count
end

def max_slice_sum_inner_loop(a, i, count)
  for j in i...a.length
    array_sum = array_sum(a, i, j)
    count = array_sum if count < array_sum
  end
  count
end

def array_sum(a, i, j)
  a[i..j].inject(:+)
end
