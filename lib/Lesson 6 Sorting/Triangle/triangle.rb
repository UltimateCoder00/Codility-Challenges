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
  triangular_condition1(a, b, c) && triangular_condition2(a, b, c) && triangular_condition3(a, b, c)
end

def triangular_condition1(a, b, c)
  a + b > c ? true : false
end

def triangular_condition2(a, b, c)
  a + c > b ? true : false
end

def triangular_condition3(a, b, c)
  b + c > a ? true : false
end
