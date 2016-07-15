def bubble_sort(array)
  counter = 0
  while counter < array.length - 1
    counter2 = 0
    sorted = true
    while counter2 < array.length - 1
      if array[counter2] > array[counter2+1]
        array[counter2], array[counter2+1] = array[counter2+1], array[counter2]
        sorted = false
      end
      counter2 += 1
    end
    break if sorted
    counter += 1
  end
  array

end







bubble_sort( [1,3,7,2,5] )