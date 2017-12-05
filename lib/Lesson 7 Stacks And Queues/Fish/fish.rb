def fish(a, b)
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

  a.count
end
