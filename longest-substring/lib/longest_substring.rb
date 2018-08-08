# @param {String} s
# @return {Integer}

def length_of_longest_substring(s)
  substrings = []
  queue = []
  letters = s.chars
  return 1 if letters.length == 1
  letters.each do |letter|
    if queue.include?(letter)
      substrings << queue.join('')
      queue = [letter]
    else
      queue.push(letter)
    end
  end
  longest = substrings.max_by { |string| string.length }
  longest.length
end
