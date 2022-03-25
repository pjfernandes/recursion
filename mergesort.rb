def merge_sort(array, start = 0, final = nil)

  final = array.size if final.nil?

  if((final - start) > 1)
    m = (final + start)/2
    merge_sort(array, start, m)
    merge_sort(array, m, final)
    merge(array, start, m, final)
  end
  m
end

def merge(array, start, m, final)

  left = array.slice(start, m)
  right = array.slice(m, final)

  top_left = 0
  top_right = 0

  (start..final).to_a.each do |element|
    if left[top_left] >= left.size
      array[element] = right[top_right]
      top_right += 1
    elsif left[top_right] >= right.size
      array[element] = left[top_left]
      top_left += 1
    elsif left[top_left] < right[top_right]
      array[element] = left[top_left]
      top_left += 1
    else
      array[element] = right[top_right]
      top_right += 1
    end
  end
end

merge_sort([3,1,4,0,5,2])
