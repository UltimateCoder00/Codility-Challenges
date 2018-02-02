def max_double_slice_sum(a)
  max = 0

  for i in 0...(a.length-2)
    for j in (i+1)...(a.length-1)
      for k in (j+1)...a.length
        count = sum_array_elements(a, i, j) + sum_array_elements(a, j, k)
        max = count if max < count
      end
    end
  end

  max
end

def sum_array_elements(array, i, j)
  array[(i+1)...j].inject(0){|sum,x| sum + x }
end
