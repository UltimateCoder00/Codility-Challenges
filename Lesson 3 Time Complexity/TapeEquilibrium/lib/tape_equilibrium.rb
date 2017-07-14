def tape_equilibrium(a)
  array = []

  part1_sum = 0
  part2_sum = a.inject(0, :+)

  for i in 0...a.length
    part1_sum += a[i]
    part2_sum -= a[i]

    array << [part1_sum, part2_sum]
  end

  array.map! { |x| (x[0] - x[1]).abs }.min
end
