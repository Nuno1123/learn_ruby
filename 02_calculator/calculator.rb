#write your code here
def add num1, num2
  num1 + num2
end

def subtract num1, num2
  num1 - num2
end

def sum array
  total = 0
  array.each do |num|
    total += num
  end
  total
end

def multiply num1, num2, *rest
  rest_num = 1
  rest.each do |num|
    rest_num = rest_num * num
  end
  num1 * num2 * rest_num
end
