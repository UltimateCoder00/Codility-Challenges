def max_product_of_three(a)
  maximal_product = a[0]*a[1]*a[2]

  for i in 1..(a.length-3)
    for j in (i+1)..(a.length-2)
      for k in (j+1)..(a.length-1)
        maximal_product = a[i]*a[j]*a[k] if maximal_product < a[i]*a[j]*a[k]
      end
    end
  end

  maximal_product
end
