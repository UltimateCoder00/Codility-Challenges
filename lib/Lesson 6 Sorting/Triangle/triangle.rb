def triangle(a)
  triangle_plane(a.sort) == 1 ? 1 : 0
end

def triangle_plane(a)
  for i in 0...(a.length-2)
    return 1 if triangular?(a[i], a[i+1], a[i+2])
  end
end

def triangular?(a, b, c)
  triangular_condition(a, b, c) && triangular_condition(a, c, b) && triangular_condition(b, c, a)
end

def triangular_condition(x, y, z)
  x + y > z ? true : false
end
