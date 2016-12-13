#write your code here
def echo string
  string
end

def shout string
  string.upcase
end

def repeat string, number = 2
  counter = 1
  result = string
  while counter < number
    result = result + ' ' + string
    counter += 1
  end
  return result
end

def start_of_word string, number
  s = string.to_s
  return s[0..number-1]
end

def first_word string
  s = string.to_s
  index = s.index(' ')
  return s[0..index-1]
end

def titleize string
  string.capitalize!                                                        #capitalizes first word
  little_words = ['and', 'the', 'or', 'an', 'over', 'but', 'it', 'a', 'at'] #puts some of the little words in an array
  result = string.split(' ').map { |word|                                   #splits every word and mappes it to iterate over all words
    if (little_words.include?(word))                                        #if the word being iterated is in the little words array
      word                                                                  #then it is lowcase
    else                                                                    #otherwise
      word.capitalize                                                       #it is capitalized
    end
  }.join(' ')                                                               #joins all worlds from map separated by spaces
  return result                                                             #returns the joined phrase
end
