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

def rand_num(numbers)

puts benchmark([1,3,7,2,5], "insertion_sort")
puts benchmark([1,3,7,2,5], "bubble_sort")
puts benchmark([1,3,7,2,5], "merge_sort")
puts benchmark([1,6,3,78,4,6,23,67,98,2,5,7,89,3,56,3,6], "insertion_sort")
puts benchmark([1,6,3,78,4,6,23,67,98,2,5,7,89,3,56,3,6], "bubble_sort")
puts benchmark([1,6,3,78,4,6,23,67,98,2,5,7,89,3,56,3,6], "merge_sort")