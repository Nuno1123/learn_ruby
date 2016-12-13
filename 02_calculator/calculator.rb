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

def power num1, num2
  result = 0
  if num2 == 0
    result = 1
  elsif num2 == 1
    result = num1
  else
    counter = 2
    result = num1
    while counter <= num2 do
      result = result*num1
      counter +=1
    end
  end
  return result
end

def factorial num1
  result = num1
  counter = num1
  while counter > 1 do
    result = result*(counter-1)
    counter -= 1
  end
  return result
end
