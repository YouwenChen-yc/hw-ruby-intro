# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  return 0 if arr.empty?
  arr.max(2).sum
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  return false if arr.length < 2
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  !!(s =~ /\A(?=[a-z])(?![aeiou])/i)
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  !!(s =~ /\A(0|[01]*00)\z/)
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, "ISBN cannot be empty" if isbn.empty?
    raise ArgumentError, "Price must be greater than 0" if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
