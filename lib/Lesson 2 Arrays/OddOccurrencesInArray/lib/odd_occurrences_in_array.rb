def odd_occurrences_in_array(a)
  a.sort.each_slice(2) { |a, b| return a unless a == b }
end
