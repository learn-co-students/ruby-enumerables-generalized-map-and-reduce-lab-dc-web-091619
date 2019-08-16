def map(source_array)
  new = [ ]
  i = 0 
  while i < source_array.length 
   new.push(yield source_array[i])
   i+=1
end
new
end

def reduce(source_array,starting_point = nil )
  if starting_point
    accumulator = starting_point
    i = 0
  else
    accumulator = source_array[0]
    i = 1
  end
  while i < source_array.length
    accumulator = yield(accumulator, source_array[i])
    i += 1
  end
  accumulator
end
    