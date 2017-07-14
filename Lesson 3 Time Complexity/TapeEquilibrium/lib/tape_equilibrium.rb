def tape_equilibrium(a)
  array = []
  part1_sum = 0
  part2_sum = a.sum

  a.each_with_index do |value, index|
    part1_sum += value
    part2_sum -= value

    array << [part1_sum, part2_sum]
  end

  array.pop

  array.map! { |x| (x[0] - x[1]).abs }

  array.min
end
