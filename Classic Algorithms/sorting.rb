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
	end
