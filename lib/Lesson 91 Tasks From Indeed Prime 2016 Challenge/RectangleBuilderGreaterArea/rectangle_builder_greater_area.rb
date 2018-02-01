def rectangle_builder_greater_area(a, x)
  b = a.reject { |n| a.count(n) == 1}.sort
  counter(array(b, b.uniq.reverse, x), x)
end

def array(b, c, x, d=[])
  for i in 0...c.length
    b.count(c[i]) > 3 ? d += [c[i],c[i]] : d << c[i]
  end
  remove_small_redundant_elements(d, x)
end

def counter(d, x, e=[], count=0)
  for i in 0...(d.length-1)
    break unless above_threshold?(d[i], d[i+1], x)
    for j in (i+1)...d.length
      break unless above_threshold?(d[i], d[j], x)
      next if e.include?([d[i],d[j]])
      e << [d[i],d[j]]
      count += 1
    end
  end
  count
end

def above_threshold?(a, b, c)
  a * b >= c
end

def remove_small_redundant_elements(array, x)
  (array.length-1).downto(0) do |i|
    array[0] * array[i] < x ? array.pop : break
  end
  array
end
