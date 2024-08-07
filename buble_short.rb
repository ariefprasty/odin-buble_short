def bubble_sort(array)
  n = array.length

  # Return the array immediately if it's empty or has one element
  return array if n <= 1

  loop do
    swapped = false

    # Traverse the array from 0 to n-1
    (n-1).times do |i|
      # If the element found is greater than the next element, swap them
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    # If no two elements were swapped by inner loop, then the array is sorted
    break unless swapped
  end

  array
end

# Example usage:
array = [] # Empty array
sorted_array = bubble_sort(array)
puts "Sorted array: #{sorted_array}"
