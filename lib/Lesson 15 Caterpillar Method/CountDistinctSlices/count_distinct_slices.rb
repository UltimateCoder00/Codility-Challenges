def count_distinct_slices(m, a)
  count = 0

  for i in 0...a.length
    count += count_distinct_slices_inner_loop(a, i)
  end

  count < 1000000000 ? count : 1000000000
end

def duplicates?(array)
  array.uniq == array
end

def count_distinct_slices_inner_loop(a, i, count=0)
  for j in i...a.length
    duplicates?(a[i..j]) ? count += 1 : (return count)
  end
  count
end
