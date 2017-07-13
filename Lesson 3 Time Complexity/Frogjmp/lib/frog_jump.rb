def frog_jump(x, y, d)
  (y - x) % d > 0 ? ((y - x) / d) + 1 : (y - x) / d
end
