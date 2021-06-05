# Your Code Here

def map(array)
    new_array = []
    array.length.times do |i|
        new_array.push(yield(array[i]))
    end
    new_array
end

def reduce(array, total = 0)
    new_array = []
    allIntegers = true
    
    array.length.times do |i|
        if array[i].class == Integer
            total = yield(total, array[i])
        else
            new_array.push(array[i])
            allIntegers = false
        end
    end

    value = new_array[0]

    new_array.length.times do |i|
        value = yield(value, new_array[i])
    end

    if allIntegers
        return total
    else
        return value
    end
end