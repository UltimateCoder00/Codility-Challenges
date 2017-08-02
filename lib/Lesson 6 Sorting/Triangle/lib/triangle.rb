def triangle(a)
  for i in 0...(a.length-2)
    for j in (i+1)...(a.length-1)
      for k in (j+1)...a.length
        if a[i] + a[j] > a[k]
          if a[j] + a[k] > a[i]
            if a[k] + a[i] > a[j]
              return 1
            end
          end
        end
      end
    end
  end

  0
end
