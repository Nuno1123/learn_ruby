class Book
# write your code here
  def title
    @title
  end

  def title=(new_title)
    @title = new_title.capitalize!

    articles = ['the', 'an', 'a']
    conjunctions = ['but', 'for', 'nor', 'or', 'so', 'and', 'yet']
    prepositions = ['of', 'on', 'in', 'at', 'since', 'for', 'ago', 'before', 'to', 'past', 'till', 'until', 'by', 'beside', 'under', 'below', 'over', 'above', 'across', 'through', 'into', 'towards', 'onto', 'from', 'about']

    @title = @title.split(' ').map { |word|
      if ((articles.include?(word)) || (conjunctions.include?(word)) || (prepositions.include?(word)))
        word
      else
        word.capitalize
      end
    }.join(' ')
    return @title
  end

end

book = Book.new

book.title = 'to of pines'

puts book.title
