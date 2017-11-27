def count_non_divisible(a)
  array = []

  for i in 0...a.length
    count = 0

    for j in 0...a.length
      count += 1 if a[i] % a[j] != 0
    end

    array << count
  end

  array
end
