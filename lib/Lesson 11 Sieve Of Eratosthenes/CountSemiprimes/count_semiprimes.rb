require 'prime'

def count_semiprimes(n, p, q)
  array = []

  for i in 0...p.length
    number = 0

    for j in p[i]..q[i]
      unless Prime.prime?(j)
        
      end
    end

    array << number
  end

  array
end
