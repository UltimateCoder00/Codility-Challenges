def count_triangles(a)
  triangle_plane1(a)
end

def triangle_plane1(a, count=0)
  for i in 0...(a.length-2)
    count += triangle_plane2(a, i)
  end
  return count
end

def triangle_plane2(a, i, count=0)
  for j in (i+1)...(a.length-1)
    count += triangle_plane3(a, i, j)
  end
  return count
end

def triangle_plane3(a, i, j, count=0)
  for k in (j+1)...(a.length)
    count += 1 if triangular?(a[i], a[j], a[k])
  end
  return count
end

def triangular?(a, b, c)
  triangular_condition1(a, b, c) && triangular_condition2(a, b, c) && triangular_condition3(a, b, c)
end

def triangular_condition1(a, b, c)
  a + b > c
end

def triangular_condition2(a, b, c)
  a + c > b
end

def triangular_condition3(a, b, c)
  b + c > a
end
