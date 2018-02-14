def max_slice_sum(a)
  max_ending = 0
  max_slice = 0

  for i in 0...a.length
    max_ending = [0, max_ending + a[i]].max
    max_slice = [max_slice, max_ending].max
  end

  a.max < 0 ? a.max : max_slice
end
