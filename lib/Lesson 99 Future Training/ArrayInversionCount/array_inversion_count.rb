def array_inversion_count(a)
  count = 0
  for i in 0...a.length
    count += a[(i+1)..-1].reject { |x| a[i] <= x }.count
  end
  count
end
