def fish(a, b)
  return b.count if b.uniq.count == 1
  a, b, counting = remove_1s_at_end(a[b.index(1)..-1], b[b.index(1)..-1], b.index(1))
  count_fish(a, b) + counting
end

def remove_1s_at_end(a, b, index)
  counting = index

  (b.length-1).downto(0) do |i|
    break unless b[i] == 1
    a.pop
    b.pop
    counting += 1
  end

  [a, b, counting]
end

def count_fish(a, b)
  while true
    count = a.count

    for i in 0...a.length
      next unless b[i] == 1 && b[i+1] == 0 && a[i] != a[i+1]

      a[i] > a[i+1] ? k = i+1 : k = i
      a.delete_at(k)
      b.delete_at(k)
    end

    break if a.count == count
  end

  a.count
end
