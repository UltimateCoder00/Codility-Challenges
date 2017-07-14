def tape_equilibrium(a)
  array = []
  a_sum = a.sum

  for i in 0...(a.length-1)
    part1_sum = a[0..i].sum
    part2_sum = a_sum - part1_sum
    array << [part1_sum, part2_sum]
  end

  array.map! { |x| (x[0] - x[1]).abs }

  array.min
end
