def number_of_disc_intersections(a)
  count = 0
  array1 = []
  array2 = []

  a.each_with_index do |val, index|
    array1 << index - val
    array2 << index + val
  end

  for j in 0...a.length-1
    for i in j+1...a.length
      if array1[j] <= array2[i]
        if array2[j] >= array1[i]
            count += 1
        end
      end

      if array1[j] >= array2[i]
        if array2[j] <= array1[i]
            count += 1
        end
      end
    end
  end

  count
end
