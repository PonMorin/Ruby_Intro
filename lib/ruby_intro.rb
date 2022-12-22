# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr_to_sum = arr.sort
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    sum = arr_to_sum[-1] + arr_to_sum[-2]
    return sum
  end
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 || arr.length == 1
    return false
  else
    flag_check = 0
    arr.each{|x|
      get_index_x = arr.find_index(x)
      arr.each{ |y|
        get_index_y = arr.find_index(y)
        if get_index_x != get_index_y
          get_sum = x + y
          if get_sum == n
            flag_check = 1
            break
          end
        end
      }
    } 
    if flag_check == 1
        flag_check = 0
        return true
    else
        arr.each{|x|
            arr.each{ |y|
              arr.each{|z|
                more_than_two = x + y + z
                if more_than_two == n
                    return false
                    flag_check = 1
                    break
                end
              }
              if flag_check == 1
                break
              end  
            }
            if flag_check == 1
                break
            end
        }
        flag_check = 0
    end
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  word = s.downcase
  arr = ["a", "e", "i", "o", "u", 
    "?","<>", "'","[", "]", "}", 
    "{", "=", "-", ")", "(", "*", 
    "&", "^", "%", "$", "#", "`", 
    "~", "{}"]

  if !arr.include?(word[0]) && s != ''
      return true
  else
      return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s = s.delete(" ")
  if s == ""
    return false

  elsif s.count('01') == s.size
    if s.to_i % 4 == 0
      return true
    end

  else
    return false
  
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError if @isbn == '' || @price <= 0
  end
  attr_accessor :isbn, :price

  def price_as_string
    return "$#{sprintf('%.2f', @price)}"
  end
end
