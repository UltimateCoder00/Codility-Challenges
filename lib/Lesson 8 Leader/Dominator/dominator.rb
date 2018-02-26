def dominator(a)
  max_number = a.max_by { |x| a.count(x) }
  max_number_count = a.count(max_number)
  b = a.reject { |x| x == max_number }
  max_number_count > b.length ? a.index(max_number) : -1
end
