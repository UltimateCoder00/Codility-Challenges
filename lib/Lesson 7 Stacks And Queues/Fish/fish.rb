def fish(a, b)
  return b.count if b.uniq.count == 1

  index = b.index(1)
  extra_counting = index

  a = a[index..-1]
  b = b[index..-1]

  (b.length-1).downto(0) do |i|
    if b[i] == 1
      a.pop
      b.pop
      extra_counting += 1
    else
      break
    end
  end

  while true
    count = a.count

    for i in 0...a.length
      if b[i] == 1
        if b[i+1] == 0
          if a[i] > a[i+1]
            a.delete_at(i+1)
            b.delete_at(i+1)
          elsif a[i] < a[i+1]
            a.delete_at(i)
            b.delete_at(i)
          else
            next
          end
        end
      end
    end

    break if a.count == count
  end

  a.count + extra_counting
end
