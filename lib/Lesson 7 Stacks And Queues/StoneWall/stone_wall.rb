def stone_wall(h)
  return 1 if simple_case?(h)
  count(h)
end

def simple_case?(array)
  simple_condition1?(array) || simple_condition2?(array)
end

def simple_condition1?(array)
  array.length == 1
end

def simple_condition2?(array)
  array.uniq.length == 1
end

def count(h, count=0)
  until h_empty?(h)
    h[0] == 0 ? h.shift : h = update_array(h[1..-1], h[0])
    count += 1 unless h[0] == 0
  end
  count
end

def update_array(h, value)
  for i in 0...h.length
    h[i] >= value ? h[i] -= value : break
  end
  h
end

def h_empty?(h)
  h.count == 0
end
