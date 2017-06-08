def my_uniq(arr)
  result = []
  arr.each do |el|
    result << el unless result.include? el
  end
  result.sort
end

class Array
  def two_sum
    result = []
    each_with_index do |x, i|
      each_with_index do |y, j|
        next if i == j
        result << [i, j] if (x + y).zero? && !result.include?([j, i])
      end
    end
    result
  end
end

def my_transpose(arr)
  result = []
  i = 0

  while i < arr.size
    result[i] = []
    j = 0

    while j < arr.size
      result[i] << arr[j][i]
      j += 1
    end

    i += 1
  end

  result
end
