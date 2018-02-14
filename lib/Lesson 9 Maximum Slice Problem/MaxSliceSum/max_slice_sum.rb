def max_slice_sum(a)
  count = a[0]
  for i in 0...a.length
    for j in i...a.length
      array_sum = array_sum(a, i, j)
      count = array_sum if count < array_sum
    end
  end

  count
end

def array_sum(a, i, j)
  a[i..j].inject(:+)
end
