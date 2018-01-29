def rectangle_builder_greater_area(a, x)
  b = a.reject { |n| a.count(n) == 1}.sort
  counter(array(b, b.uniq.reverse), x)
end

def array(b, c, d=[])
  c.length.times { |i| b.count(c[i]) > 3 ? d += [c[i],c[i]] : d << c[i] }
  d
end

def counter(d, x, e=[], count=0)
  for i in 0...(d.length-1)
    for j in (i+1)...d.length
      break unless above_threshold?(d[i], d[j], x)

      unless e.include?([d[i],d[j]])
        e << [d[i],d[j]]
        count += 1
      end
    end
  end

  count
end

def above_threshold?(a, b, c)
  a * b >= c
end
