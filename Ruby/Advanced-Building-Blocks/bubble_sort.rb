def bubble_sort(array)
	(1...array.size).each do |a|
		(0...array.size - a).each do |b|
			if array[b] > array[b + 1]
				array[b], array[b + 1] = array[b + 1], array[b]
			end 
		end
	end
	array
end

def bubble_sort_by(array)
	(1...array.size).each do |a|
		(0...array.size - a).each do |b|
			if yield(array[b], array[b + 1]) > 0
				array[b], array[b + 1] = array[b + 1], array[b]
			end
		end
	end
	array
end

bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","hey"]) {|left, right| left.length - right.length}

