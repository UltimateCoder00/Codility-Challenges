def array_inversion_count(a)
  count = 0
  a.each_with_index { |val, i| count += count_inversions(a[(i+1)..-1], val) }
  count
end

def count_inversions(array, k)
  array.reject { |x| k <= x }.count
end
