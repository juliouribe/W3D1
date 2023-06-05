class Array
  def my_each(&block)
    (0...self.length).each do |idx|
      block.call(self[idx])
    end
    self
  end

  def my_select(&block)
    arr = []
    self.my_each do |ele|
      arr << ele if block.call(ele)
    end
    arr
  end

  def my_reject(&block)
    arr = []
    self.my_each do |ele|
      arr << ele if !block.call(ele)
    end
    arr
  end

  def my_any?(&block)
    self.my_each do |ele|
      return true if block.call(ele)
    end
    false
  end

  def my_all?(&block)
    self.my_each do |ele|
      return false if !block.call(ele)
    end
    true
  end

  def my_flatten
    flattened = []
    self.my_each do |ele|
		if ele.is_a?(Array)
      		flattened += ele.my_flatten
		else
			flattened << ele
		end
    end
	flattened
  end

  def my_zip(*arrays)
    merged = []
    self.each_with_index do |ele, idx|
      sub_array = [ele]
      arrays.my_each do |array|
        sub_array << array[idx]
      end
      merged << sub_array
    end
    merged
  end

  def my_rotate(rotations=1)
    arr = []
    self.each {|ele| arr << ele }
    rotations.abs.times do |rotation|
      if rotations > 0
          first = arr.shift
          arr << first
      else
          last = arr.pop
          arr.unshift(last)
      end
    end
    arr
  end

  def my_join(string = "")
	new_str = ""
	self.each_with_index do |ele, idx|
		if idx == self.length - 1
			new_str += ele 
		else
			new_str += ele + string
		end
	end
	new_str
  end
  
  def my_reverse
	arr = []
	self.each do |ele|
		arr = [ele] + arr
	end
	arr 
  end

  # without a proc, sort as is, with proc sort using result
  def bubble_sort!(&prc)

  end
end

def factors(num)
	(1..num).select {|div| num % div == 0}
end
