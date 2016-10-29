# class Hamming iterates through a DNA strand to look at the levels of mutation

class Hamming
  def self.compute(str1, str2)
    raise raise_exception if str1.length != str2.length
    letter_difference = 0
    i = 0
    while str1.length > i 
      letter_difference += distance(str1[i], str2[i])
      i += 1
    end
    p letter_difference
  end

  def self.distance(letter1, letter2)
    return 1 if letter1 != letter2
    return 0
  end

  def self.raise_exception
     ArgumentError.new('Wrong number of Arguments')
  end
end

module BookKeeping
    VERSION = 3
end

# Hamming.compute("GAGCCTACTAACGGGAT", "CATCGTAATGACGGCCT")