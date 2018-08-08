# @param {String} s
# @return {Integer}

def length_of_longest_substring(s)
  return 1 if s.length == 1
  create_substrings(s.chars)
  longest = @substrings.max_by { |string| string.length }
  longest.length
end

def create_substrings(characters)
  @substrings = []
  @queue = []
  characters.each do |character|
    check_letter(character)
  end
end

def check_letter(letter)
  if @queue.include?(letter)
    @substrings << @queue.join('')
    @queue = [letter]
  else
    @queue.push(letter)
  end
end
