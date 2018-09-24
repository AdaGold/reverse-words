# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  # raise NotImplementedError
  return my_words if my_words.nil? || my_words.empty?

  my_words_start = 0
  my_words_end = 0
  index = 0

  until index > my_words.length
    if my_words[index] != " " && my_words[index] != nil
      index += 1

    else
      my_words_end = index -1
      index += 1
      while my_words_start < my_words_end
        temp = my_words[my_words_start] # swap with temporary variable
        my_words[my_words_start] = my_words[my_words_end]
        my_words[my_words_end] = temp
        my_words_start += 1
        my_words_end -= 1
      end
      my_words_start = index
      my_words_end = index
    end
  end
  return my_words
end


# reversed_string = ''
#
# i = 0
# while i < my_words.length
#   reversed_string = my_words[i] + reversed_string
#   i += 1
# end
#
# return reversed_string
