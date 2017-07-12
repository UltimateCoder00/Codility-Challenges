def cyclic_rotation(a, k)
  k.times do
    a.unshift(a[-1])
    a.pop
  end

  a
end
