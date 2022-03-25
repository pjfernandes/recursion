def multiple_3_or_5?(limit = 10)
  sum = 0
  for i in (0...limit)
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
  end
  sum
end
####################################
