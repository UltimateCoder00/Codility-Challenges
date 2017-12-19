def socks_laundering(k, c, d)
  if k >= d.length
    array = (c + d).sort
    return count_array_duplicates(array)
  end

  return count_array_duplicates(c) + k if (c & d.uniq).length >= k

  count = count_array_duplicates(c) 
  dirty_array = c & d.uniq

  count += dirty_array.length
  k -= dirty_array.length

  k == dirty_array.length ? count : count + (k/2)
end

def count_array_duplicates(array)
  array.sort!
  count = 0

  (array.length - 1).downto(1) do |i|
    if array[i] == array[i-1]
      array.delete_at(i)
      array.delete_at(i-1)
      count += 1
    end
  end

  count
end
