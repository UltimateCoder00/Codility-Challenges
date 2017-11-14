require 'prime'

def common_prime_divisors(a, b)
  count = 0

  for i in 0...a.length
    maxValue = [a[i],b[i]].max
    minValue = [a[i],b[i]].min

    if maxValue != minValue
      next if Prime.prime?(maxValue)
    end

    breaking = 0

    for j in (minValue+1)...maxValue
      if maxValue % j == 0
        if Prime.prime?(j)
          breaking = 1
        end
      end
    end

    next if breaking == 1

    for k in 1..minValue
      if Prime.prime?(k)
        if maxValue % k == 0
          if minValue % k != 0
            break
          end
        else
          if minValue % k == 0
            break
          end
        end
      end

      count += 1 if k == minValue
    end
  end

  count
end
