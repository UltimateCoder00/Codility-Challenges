def number_of_disc_intersections(a)
  circle_radii = get_circle_radii(a)
  count_intersections(a, circle_radii[0], circle_radii[1])
end

def get_circle_radii(a, left_radius=[], right_radius=[])
  a.each_with_index do |val, index|
    left_radius << index - val
    right_radius << index + val
  end
  [left_radius, right_radius]
end

def count_intersections(a, array1, array2, count=0)
  for j in 0...a.length-1
    count += count_intersections_inner_loop(a, array1, array2, j)
    return -1 if count > 10000000
  end
  count
end

def count_intersections_inner_loop(a, array1, array2, j, count=0)
  for i in j+1...a.length
    count += 1 if check_radii_intersection_conditions(array2[i], array1[j], array2[j], array1[i])
  end
  count
end

def check_inequality(a, b)
  a >= b
end

def check_intersection_conditions(a, b, c, d)
  check_inequality(a, b) && check_inequality(c, d)
end

def check_radii_intersection_conditions(a, b, c, d)
  check_intersection_conditions(a, b, c, d) || check_intersection_conditions(b, a, d, c)
end
