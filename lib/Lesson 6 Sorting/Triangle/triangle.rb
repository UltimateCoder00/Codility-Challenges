def triangle(a)
  triangle_plane1(a) == 1 ? 1 : 0
end

def triangle_plane1(a)
  for i in 0...(a.length-2)
    return 1 if triangle_plane2(a, i) == 1
  end
end

def triangle_plane2(a, i)
  for j in (i+1)...(a.length-1)
    return 1 if triangle_plane3(a, i, j) == 1
  end
end

def triangle_plane3(a, i, j)
  for k in (j+1)...a.length
    return 1 if triangular?(a[i], a[j], a[k])
  end
end

def triangular?(a, b, c)
  triangular_condition(a, b, c) && triangular_condition(a, c, b) && triangular_condition(b, c, a)
end

def triangular_condition(x, y, z)
  x + y > z ? true : false
end
