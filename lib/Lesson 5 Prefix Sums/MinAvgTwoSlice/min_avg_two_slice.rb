def min_avg_two_slice(a)
  min_average = (a.first.to_f + a[1]) / 2
  min_average_index = 0

  for i in 0...(a.length - 1)
    sum = a[i]

    for j in (i+1)...(a.length)
      sum += a[j]

      if min_average?(sum, i, j, min_average)
        min_average = average(sum, i, j)
        min_average_index = i
      end
    end
  end

  min_average_index
end

def average(sum, i, j)
  sum / distance(i, j)
end

def min_average?(sum, i, j, min_average)
  average(sum, i, j) < min_average
end

def distance(i, j)
  (j - i + 1.0)
end
