def map(array)
  new = []
  i = 0
  while i < array.length do
    
    new.push(yield(array[i]))
    i += 1 
  end

  return new

end


def reduce(source_array, start_value = 0)
  i = 0 
  while i < source_array.length do
    if i == 0 
      total = yield(start_value)
      i += 1 
    else
    
     total = yield(source_array[i])
      i += 1
    end
  
    
  end
  return total
  
end
