def insert(array, right_index, value)
    # value is the value of array[right_index + 1]
    # right_index is the furthest right sorted element

    # Step through sorted elements right to left.
    # As long as your value is less than the element
    # at array[i] and you still have elements
    i = right_index
    while(i >= 0 && array[i] > value)
        # copy the element
        array[i+1] = array[i]
        i -= 1
    end

    # insert the actual element
    array[i+1] = value;
end

def insertion_sort(array)
    counter = 0
    while counter < (array.length - 1)
        insert(array, counter, array[counter+1])
        counter += 1
    end
    array
end

insertion_sort( [1,3,7,2,5] )