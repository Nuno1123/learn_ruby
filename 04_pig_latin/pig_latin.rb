#write your code here
def translate str
  vowel = ['a', 'e', 'i', 'o', 'u']                                             #puts vogals into an array of vogals

  result = str.split(' ').map { |e|                                             #splits each words from the phrase and iterates through all words
    if vowel.include?(e.split('')[0])                                           #if the first letter of the word being iterated is a vowel
      result = e + 'ay'                                                         #result variable should be the word concatenated with ay at the end
    else                                                                        #otherwise
      counter = 0                                                               #variable counter equals 0
      letters_to_add = []                                                       #array of letter to add at the end
      index_to_remove = 0                                                       #variable with the index number of consonant letters that should be taken away from the word in the final result
      q = false                                                                 #variable q is false means, one of the consonant isn't a q

      while not vowel.include?(e.split('')[counter])                            #while the word being iterated isn't a vowel do the next block

        if ((e[counter] == 'q') && (e[counter + 1] == 'u'))                     #if one of the consonant letters is a 'q' and the next letter is a 'u'
          letters_to_add.push(e[counter])                                       #add the letter 'q' to the array of consonants
          letters_to_add.push(e[counter + 1])                                   #add the letter 'u' to the array of consonants as well
          q = true                                                              #sets q variableas true
        else                                                                    #otherwise
          letters_to_add.push(e[counter])                                       #add the letter being iterated to the array of consonants
        end

        counter += 1                                                            #add 1 to the counter
        index_to_remove += 1                                                    #add 1 to the index to remove
      end

      if (q == true)                                                            #if there was a 'qu'
        result =  e[index_to_remove + 1..e.length] + letters_to_add.join + 'ay' #remove all consonants in a row in the beginning of the word plus the u and concatenate them into to the end of the word plus ay
      else                                                                      #if not
        result =  e[index_to_remove..e.length] + letters_to_add.join + 'ay'     #just remove the consonants in a row in the beginning of the word and concatenate them into the end of the word plus the ay
      end
    end
  }.join(' ')                                                                   #join all words with spaces in between
  return result                                                                 #returns the result
end
