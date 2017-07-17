def permutation_check(a)
  array = [*1..a.length]

  a.sort == array ? 1 : 0
end
