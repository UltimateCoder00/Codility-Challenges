require 'prime'

def count_semiprimes(n, p, q)
  array = []

  for i in 1..n
    array << i if Prime.prime?(i)
  end

  array2 = []

  for i in 0...p.length
    number = 0

    for j in p[i]..q[i]
      for k in 0...(array.length-1)
        number2 = number

        for l in k...array.length
          if j == array[k]*array[l]
            number += 1
            break
          end
        end

        break if number2 != number
      end
    end

    array2 << number
  end

  array2
end
