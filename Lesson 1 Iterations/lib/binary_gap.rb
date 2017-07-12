def binary_gap(n)
  binary_string = n.to_s(2)

  binary_string.length.times do
    if binary_string[-1] == "0"
      binary_string = binary_string[0..-2]
    else
      break
    end
  end

  count = 0
  temp_count = 0

  for i in 1..binary_string.length
    if binary_string[i] == "0"
      temp_count += 1
    else
      temp_count = 0
    end

    if count < temp_count
      count = temp_count
    end
  end

  count
end
