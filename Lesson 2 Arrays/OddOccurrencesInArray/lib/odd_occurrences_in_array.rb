def odd_occurrences_in_array(a)
  a.sort!

  a.each_slice(2) do |a, b|
    return a unless a == b
  end
end
