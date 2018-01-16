def rectangle_builder_greater_area(a, x)
  b = a.sort
  c = b.reject { |n| b.count(n) == 1}
  d = c.uniq
  e = d.reverse

  count = 0
  for i in 0...(d.length-1)
    for j in (i+1)...d.length
      e[i] * e[j] >= x ? count += 1 : break
    end
  end

  count
end
