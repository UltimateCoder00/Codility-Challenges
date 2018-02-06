def triangle(a)
  for i in 0...(a.length-2)
    for j in (i+1)...(a.length-1)
      for k in (j+1)...a.length
        return 1 if triangular?(a[i], a[j], a[k])
      end
    end
  end

  0
end

def triangular?(a, b, c)
  condition1(a, b, c) && condition2(a, b, c) && condition3(a, b, c)
end

def condition1(a, b, c)
  a + b > c ? true : false
end

def condition2(a, b, c)
  a + c > b ? true : false
end

def condition3(a, b, c)
  b + c > a ? true : false
end
