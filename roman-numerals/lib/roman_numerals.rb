# @param {String} s
# @return {Integer}

def roman_to_int(s)
  characters = s.chars
  total = 0

  for i in (0...s.length) do
    amount = values[characters[i]]
    return total += amount if characters[i + 1].nil?
    if amount < values[characters[i + 1]]
      total -= amount
    else
      total += amount
    end
  end
  total
end

def values
  { 'I' => 1,
    'V' => 5,
    'X' => 10 }
end
