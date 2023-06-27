# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  res = 0
  arr.each {|a| res += a}
  return res
  # YOUR CODE HERE
end

def max_2_sum arr
  l, r = 0, arr.length()-1
  res = 0
  if arr.empty?
    return 0
  elsif l == r 
    return arr[0]
  end
  while l < r
    res = arr[l] + arr[r]
    if arr[l] > arr[r]
      r -= 1
    else
      l += 1
    end
  end
  return res
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  return false if arr.empty?

  seen = {}

  arr.each do |val|
    return true if seen[n - val]
    seen[val] = true
  end
  return false
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  return "Hello, " + name
  # YOUR CODE HERE
end

def starts_with_consonant? s
  pattern = /\A[dsfghljkcxzvbnmqwtryp]/i
  return true if s =~ pattern
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  return false if s.empty? == true
  s.chars.each do |a|
    return false if a.to_i.to_s != a
  end
  return true if s.to_i(2) % 4 == 0
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, "ISBN cannot be empty string" if isbn.empty?
    raise ArgumentError, "price cannot be less than or equal to zero" if price <= 0
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end

  def isbn=(new_amount)
    @isbn = new_amount
  end

  def price
    @price
  end

  def price=(new_amount)
    @price = new_amount
  end
  
  def price_as_string
    return "$%0.2f" % [@price]
  end
# YOUR CODE HERE
end
