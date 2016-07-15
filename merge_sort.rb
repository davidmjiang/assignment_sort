def merge_sort(array)
    # // if the array is one element long, just return it
    return array if array.length == 1
    mid_point = array.length/2
    left_array = array[0..mid_point]
    right_array = array[(mid_point+1)..(array.length-1)]
    # // mergeSort() the left half of the array
    merge_sort(left_array)
    # // mergeSort() the right half of the array
    merge_sort(right_array)
    # // merge() the two halves
    merge(left_array, right_array)
    # // return the merged array
end


def merge(leftArr, rightArr)

    # // var newArr = [];
    new_array = []
    # // compare leftArr[0] and rightArr[0]
    # // whichever is smaller, push it onto newArr
    if leftArr[0] < rightArr[0]
      new_array << leftArr[0]
    else
      new_array << rightArr[0]
    # // repeat the process, but don't reuse elements,
    # // until you have pushed all the elements from
    # // leftArr and rightArr onto newArr in sorted order

    # // return newArr
end