# Your Code Here
def map (arr)
   arr2=[]
   i=0
  while i < arr.length do
  arr2.push(yield(arr[i]))
   i+=1
  end
  arr2
end

def reduce (arr,starting_value=nil)
  if starting_value
    adder=starting_value
    i=0 
  else
    adder=arr[0] 
    i=1
  end
  while i < arr.length do
      adder=yield(adder,arr[i])
      i+=1 
  end
  adder
end
  
      

