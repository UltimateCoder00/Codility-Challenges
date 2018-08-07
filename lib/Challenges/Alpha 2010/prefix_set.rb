def prefix_set(array)
  unique_array = array.uniq.sort

  array.each_with_index do |_val, index|
    return index if array[0..index].uniq.sort == unique_array
  end
end
