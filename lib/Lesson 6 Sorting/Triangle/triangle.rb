def triangle(a)
  a.sort!
  for i in 0...(a.length-2)
    return 1 if triangular?(a[i], a[i+1], a[i+2])
  end
  0
end

def triangular?(a, b, c)
  triangular_condition(a, b, c) && triangular_condition(a, c, b) && triangular_condition(b, c, a)
end

def triangular_condition(x, y, z)
  x + y > z ? true : false
end
