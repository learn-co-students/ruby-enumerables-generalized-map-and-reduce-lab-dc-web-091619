def map (array)
  new = []
  i = 0 
  while i < array.length 
  new.push(yield(array[i]))
   i+=1
  end
  new
end

def reduce(array,sv=nil)
  if sv 
    num = sv
    i = 0 
  else 
    num = array[0]
    i = 1 
  end
  while i < array.length 
  num = yield(num,array[i])
  i += 1 
end
num
end 