def prefix_set(array)
  return 0 if array.uniq.length == 1
  unique_array = array.uniq.sort

  if unique_array.length < array.length / 10
    compute_small_array(array, unique_array)
  else
    compute_big_array(array)
  end
end

def compute_small_array(array, unique_array)
  ((unique_array.length - 1)..array.length).each do |index|
    return index if array[0..index].uniq.sort == unique_array
  end
end

def compute_big_array(array)
  (array.length - 1).downto(0) do |index|
    array.count(array[index]) == 1 ? (return index) : array.pop
  end
end
