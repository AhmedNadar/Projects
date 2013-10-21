module Sorting

  def self.merge_sort(array)
    return array if array.size <= 1
    n = array.length/2
    array1 = array[0..n-1]
    array2 = array[n..array.length]
    return merge(merge_sort(array1),merge_sort(array2))
  end

  def self.merge(first_array, second_array)
    merged = []
    until first_array.empty? or second_array.empty?
      first_array.first <= second_array.first ? merged << first_array.shift : merged << second_array.shift
    end
    merged + first_array + second_array
  end


  def self.bubble_sort(array)
    loop do
      swapped = false
      for i in 1..array.size-1
        if array[i-1] > array[i]
          array[i-1], array[i] = array[i], array[i-1]
          swapped = true
        end
      end
      break unless swapped
    end
    array
  end

  def self.insertion_sort(array)
    for i in (1..array.size-1)
      val = array[i]
      pos = i - 1
      while pos >= 0 and array[pos] > val do
        array[pos+1] = array[pos]
        pos -= 1
      end
      array[pos+1] = val
    end
    array
  end

  def self.quick_sort(array)
    return [] if array == []
    less, greater = [], []
    piv = array.shift
    array.each do |x|
      if x <= piv
        less << x
      else
        greater << x
      end
    end
    return quick_sort(less) + [piv] + quick_sort(greater)
  end

  def self.selection_sort(array)
    for i in (0..array.size-1)
      min = i
      for pos in (i+1..array.size-1)
        if array[pos] < array[min]
          min = pos
        end
      end
      array[i], array[min] = array[min], array[i]
    end
    array
  end

  def self.heap_sort(array)
    build_heap(array)
    (array.size-1).downto(1) do |i|
      array[0], array[i] = array[i], array[0]
      heapify(array, 0, i)
    end
    array
  end

  def self.build_heap(array)
    (array.size/2 - 1).downto(0) do |i|
      heapify(array, i, array.size)
    end
  end

  def self.heapify(array, idx, max)
    left = 2*idx + 1
    right = 2*idx + 2
    largest = left
    if left < max and array[left] > array[idx]
    else
      largest = idx
    end
    if right < max and array[right] > array[largest]
      largest = right
    end
    if largest != idx
      array[idx], array[largest] = array[largest], array[idx]
      heapify(array, largest, max)
    end
  end

  
end
