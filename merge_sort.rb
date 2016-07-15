def merge_sort(array)
    # // if the array is one element long, just return it
    return array if array.length == 1
    mid_point = (array.length-1)/2
    left_half = array[0..mid_point]
    right_half = array[(mid_point+1)..(array.length-1)]
    # // mergeSort() the left half of the array
    left_array = merge_sort(left_half)
    # // mergeSort() the right half of the array
    right_array = merge_sort(right_half)
    # // merge() the two halves
    merge(left_array, right_array)
    # // return the merged array
end


def merge(leftArr, rightArr)

    # // var newArr = [];
    new_array = []
    # // compare leftArr[0] and rightArr[0]
    # // whichever is smaller, push it onto newArr
    left_counter = 0
    right_counter = 0
    until left_counter == leftArr.length || right_counter == rightArr.length
        if leftArr[left_counter] < rightArr[right_counter]
          new_array << leftArr[left_counter]
          left_counter += 1
        else
          new_array << rightArr[right_counter]
          right_counter += 1
        end
    end

    if left_counter == leftArr.length
        (right_counter..rightArr.length-1).each do |i|
            new_array << rightArr[i]
        end
    else
        (left_counter..leftArr.length-1).each do |i|
            new_array << leftArr[i]
        end
    end

    # // repeat the process, but don't reuse elements,
    # // until you have pushed all the elements from
    # // leftArr and rightArr onto newArr in sorted order

    # // return newArr
    new_array
end

puts merge_sort( [3,1,5,0,7] )