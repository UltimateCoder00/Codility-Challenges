def rectangle_builder_greater_area(a, x)
  b = a.sort
  c = b.reject { |n| b.count(n) == 1}
  d = c.uniq
  e = d.reverse
  f = []

  for i in 0...e.length
    if c.count(e[i]) > 3
      f << e[i]
      f << e[i]
    else
      f << e[i]
    end
  end

  g = []

  count = 0
  for i in 0...(f.length-1)
    for j in (i+1)...f.length
      if f[i] * f[j] >= x
        unless g.include?([f[i],f[j]])
          g << [f[i],f[j]]
          count += 1
        end
      else
        break
      end
    end
  end

  count
end
