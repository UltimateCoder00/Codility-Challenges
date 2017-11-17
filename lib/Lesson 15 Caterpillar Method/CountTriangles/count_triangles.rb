def count_triangles(a)
  count = 0

  for i in 0...(a.length-2)
    for j in (i+1)...(a.length-1)
      for k in (j+1)...(a.length)
        if a[i] + a[j] > a[k]
          if a[i] + a[k] > a[j]
            if a[j] + a[k] > a[i]
              count += 1
            end
          end
        end
      end
    end
  end

  count
end
