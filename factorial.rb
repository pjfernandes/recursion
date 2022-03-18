def factorial(n)
  n <= 1 ? 1 : n * factorial(n - 1)
end

def factorial_loop(n)
  prod = 1
  array = (1..n).to_a
  array.each { |element| prod *= element }
  prod
end
###########################
def palindrome?(string)
  string_reverse = ""
  i = string.size - 1
  string.size.times do
    string_reverse += string[i]
    i -= 1
  end
  string_reverse == string ? true : false
end

palindrome?("ovo")
###############################
def bottles(n)
  if n == 0
    puts "no more bottles of beer on the wall"
  else
   puts "#{n-1} bottles of beer on the wall"
   bottles(n-1)
  end
end

bottles(5)
##################################
def fibonacci(n)
  if n < 2
    n
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

fibonacci(10)
###############################
def my_flatten(array)
  new_array = []
  array.each do |element|
    if element.kind_of?(Array)
      my_flatten(element)
    else
      new_array << element
    end
  end
  new_array
end

my_flatten([[3,4,5],3,4,5,[4,5],6])
###############################
def collatz(n)
  if n == 1
    return 0
  elsif n.even?
   1 + collatz(n/2)
  else 1 + collatz(3 * n + 1)
  end
end
