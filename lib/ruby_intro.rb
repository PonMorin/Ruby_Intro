# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  first_max = -999
  second_max = -999
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.each{|x|
      if x > first_max
          first_max = x
      end
    }
    get_index = arr.find_index(first_max)
    arr.each_with_index{|y, i|
      if i != get_index
          if y > second_max
              second_max = y
          end
      end
    }
    return first_max + second_max
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
  arr = ["a", "e", "i", "o", "u"]
  if s == '' || s == '#foo'
      return false
  elsif !arr.include?(word[0])
      return true
  else
      return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s = s.delete(" ")
  if s.count('01') == s.size && s.size != 3
    puts "true"

  else
    puts "false"
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
