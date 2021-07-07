def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  return new
end

def reduce(source_array, starting_point=nil)
  #total=starting_point
  #index = 0
  if starting_point
    total=starting_point
    index=0
  else
    total=source_array[0]
    index=1
  end
  while index < source_array.length
    #total=total+source_array[index]
    total= yield(total,source_array[index])
    index+=1
  end
  total
end
