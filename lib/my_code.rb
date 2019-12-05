# Your Code Here
def map(source_array)
  result_array = []
  counter_index = 0
  while counter_index < source_array.length do
    result_array << yield(source_array[counter_index])
    counter_index += 1
  end
  return result_array
end

def reduce(source_array, starting_value = 0)
  array_total = starting_value
  counter_index = 0
  while counter_index < source_array.length do
    array_total = yield(source_array[counter_index], array_total)
    counter_index += 1
  end
  if array_total == nil
    return false
  end
  return array_total
end
