def prefix_set(array)
  unique_array = array.uniq.sort

  ((unique_array.length - 1)..array.length).each do |index|
    return index if array[0..index].uniq.sort == unique_array
  end
end
