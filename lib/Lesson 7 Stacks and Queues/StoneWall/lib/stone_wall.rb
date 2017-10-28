def stone_wall(a)
  p a
  a.delete(0)
  return 0 unless !!a.pop

  count = 1
  value = a[0]

  for i in 0...(a.length-1)
    if value > a[i]
      stone_wall(a[0..(i-1)])
    else
      a[i] -= value
      count += 1 if value > a[i+1]
    end
  end

  count
end
