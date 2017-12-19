def socks_laundering(k, c, d)
  count = 0
  count2 = 0

  if k >= d.length
    array = (c + d).sort

    (array.length - 1).downto(1) do |i|
      if array[i] == array[i-1]
        array.delete_at(i)
        array.delete_at(i-1)
        count += 1
      end
    end

    return count
  end

  c.sort!
  d.sort!

  (c.length - 1).downto(1) do |i|
    if c[i] == c[i-1]
      c.delete_at(i)
      c.delete_at(i-1)
      count += 1
    end
  end

  e = d.dup

  (e.length - 1).downto(1) do |i|
    if e[i] == e[i-1]
      e.delete_at(i) if c.include?(e[i])
      count2 += 1
    end
  end

  f = e - c
  g = e - f

  return count + k if g.length >= k

  count += g.length
  k -= g.length

  k == g.length ? count : count + (k/2)
end
