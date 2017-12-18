def socks_laundering(k, c, d)
  c.sort!
  d.sort!
  count = 0

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
      e.delete_at(i)
      e.delete_at(i-1)
    end
  end

  f = e - c
  g = e - f

  return count + k if g.length >= k
  h = d - f - g
  count
end
