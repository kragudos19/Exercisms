# class Hamming iterates through a DNA strand to look at the levels of mutation

class Hamming
  LETTER_DIFFERENCE = 0
  def self.compute(str1, str2)
    raise raise_exception if str_1.length != str_2.length
    i = 0
    while str_1.length > i 
      distance(str1[i], str2[i])
      i += 1
    end
  end

  def self.distance(letter1, letter2)
   LETTER_DIFFERENCE += 1 if letter1 != letter2
  end

  def self.raise_exception
    ArgumentError.new('Wrong number of Arguments')
  end
end
module BookKeeping
  VERSION = 3
end