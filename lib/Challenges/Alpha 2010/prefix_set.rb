def prefix_set(array)
  return 0 if array.uniq.length == 1
  unique_array = array.uniq.sort

  if unique_array.length < array.length / 10
    ((unique_array.length - 1)..array.length).each do |index|
      return index if array[0..index].uniq.sort == unique_array
    end
  else
    (array.length - 1).downto(0) do |index|
      if array.count(array[index]) == 1
        return index
      else
        array.pop
      end
    end
  end
end
