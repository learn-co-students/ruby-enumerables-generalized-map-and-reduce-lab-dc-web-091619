# Your Code Here
def map(source_array)
  i = 0
  new_array = []
  while i < source_array.length do
    x = source_array[i]
    new_array << yield(x)
    i += 1
  end
  new_array
end

def reduce(source_array, starting = 0)
  i = 0
  run_total = starting
  while i < source_array.length do
    n = source_array[i]
    run_total = yield(run_total, n)
    i += 1
  end
  if run_total == 0
    return TRUE
  end
  run_total
end
  
  

  