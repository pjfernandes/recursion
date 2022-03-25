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
