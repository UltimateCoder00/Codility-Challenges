def tie_ropes(k, a)
  count = 0

  for i in 0...a.length
    rope_count = a[i]

    if rope_count >= k
      count = 1 if count == 0
      next
    end

    counting = 1

    for j in (i+1)...a.length
      rope_count += a[j]
      counting += 1
      
      if rope_count >= k
        count = counting if count < counting
        break
      end
    end
  end

  count
end
