require_relative 'insert.rb'
require_relative 'bubble_sort.rb'
require_relative 'merge_sort.rb'

def benchmark(array, sort)
  time1 = Time.now
  1000.times do
    case sort
    when "insertion_sort"
      insertion_sort(array)
    when "bubble_sort"
      bubble_sort(array)
    when "merge_sort"
      merge_sort(array)
    end
  end
  time2 = Time.now
  (time2 - time1)
end


#small array: merge sort is slowest
puts benchmark([1,3,7,2,5], "insertion_sort")
puts benchmark([1,3,7,2,5], "bubble_sort")
puts benchmark([1,3,7,2,5], "merge_sort")


large_array=[]
1000.times do
  large_array << rand(1..100)
end

puts benchmark(large_array, "insertion_sort")
puts benchmark(large_array, "bubble_sort")
puts benchmark(large_array, "merge_sort")