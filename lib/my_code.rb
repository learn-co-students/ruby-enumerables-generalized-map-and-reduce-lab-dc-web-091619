require 'pry'

def map(array) 
  i = 0 
  array1 = []
  while i < array.length do
 array1.push(yield(array[i]))
 i += 1
 end
 return array1
end

# map([1,2,3,4]){|num| num + 1}  [2,3,4,5]
# map([1,2,3,4]){|num| num  2}  [3,4,5,6]
 
# def reduce_to_total(source_array, starting_point = 0)
#   new = 0
#   counter = 0 
#   while counter < source_array.length do
#   new += source_array[counter] 
#   counter += 1
#   end
#   return 
# end

def reduce(array, starting_point = nil)
  if starting_point
  total = starting_point
  i = 0 
else 
  total = array[0]
  i = 1
end
  while i < array.length do
    total = yield(total, array[i])
    i += 1 
  end
  return total
end
    
    
    
  

    
    
    
    
    
    
    
    
    