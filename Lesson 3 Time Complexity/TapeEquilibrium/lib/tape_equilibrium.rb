def tape_equilibrium(a)
  array = []

  for i in 0...(a.length-1)
    array << [a[0..i].inject(0, &:+), a[(i+1..-1)].inject(0, &:+)]
  end

  array.map! { |x| (x[0] - x[1]).abs }

  array.min
end
