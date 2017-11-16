def count_distinct_slices(m, a)
  count = 0

  for i in 0...a.length
    for j in i...a.length
      if a[i..j].uniq == a[i..j]
        count += 1
      else
        break
      end
    end
  end

  count < 1000000000 ? count : 1000000000
end
