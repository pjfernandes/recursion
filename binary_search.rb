def binary_search(array, n)
  start = 0
  final = array.size - 1

  while start <= final
    m = (start + final)/2
    if n == array[m]
      result = "#{n} found at #{m} position"
      break
    elsif n < array[m]
     final = m - 1
    else
      start = m + 1
    end
  end
  result
end

binary_search([1, 2, 3, 4, 10, 2, 5, 21, 23], 2)
#####################################
def bubble_sort(array)
  array = array
  for j in (0..array.size - 2)
    for i in (0..array.size - 1)
      if array[i+1].nil? == false
        if array[i] > array[i+1]
          aux = array[i]
          array[i] = array[i+1]
          array[i+1] = aux
        end
      end
    end
  end
  array
end

bubble_sort([1, 2, 3, 4, 10, 2, 5, 21, 23])
