def map(array)
  new_array = []
  i = 0
  while i < array.length
    new_array.push(yield(array[i]))
    i+=1
  end
  new_array
end

def reduce(array, starting_point = nil)
  if starting_point
    result = starting_point
    i = 0
  else
    result = array[0]
    i = 1
  end
  while i < array.length
    result = yield(result,array[i])
    i += 1
  end
  result 
end
