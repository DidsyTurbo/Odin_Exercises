module Enumerable
	def my_each
		return self unless block_given?

		for i in self
			yield(i)
		end	
	end

	def my_each_with_index
		return self unless block_given?

		for i in 0...self.size
			yield(self[i], i)
		end
	end

	def my_select
		return self unless block_given?

		array = []

		my_each { |i| array << i if yield(i) }

		array
	end

	def my_all?
		if block_given?
			my_each { |i| return false unless yield(i) }
		else
			my_each { |i| return false unless i }
		end
		true
	end

	def my_any?
		if block_given?
			my_each { |i| return true if yield(i) }
		else
			my_each { |i| return true if i }
		end
		false
	end

	def my_none?
		if block_given?
			my_each { |i| return false if yield(i) }
		else
			my_each { |i| return false if i }
		end
		true
	end

	def my_count
		self.my_select { |i| yield(i) }.size
	end

	def my_map(block_or_proc)
		array = []
		if block_or_proc
			my_each do |i|
				array << block_or_proc.call(i)
			end
			return array
		else
			return self.to_enum
		end
	end

	def my_inject( memo = nil )
		accum = memo.nil? ? self.first : memo
		my_each { |i| accum = yield(accum, i) }
		accum
	end
end

def multiply_els(array)
  array.my_inject(1) { |x, i| x * i }
end

puts multiply_els([2,4,5])