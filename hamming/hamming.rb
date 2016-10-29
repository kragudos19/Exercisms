# class Hamming iterates through a DNA strand to look at the levels of mutation

module BookKeeping
  VERSION = 3
end

class Hamming
  VERSION = 3
  def self.compute(str1, str2)
    raise raise_exception if str1.length != str2.length
    hamming_difference = 0
    str1.length.times { |x| hamming_difference += 1 if str1[x] != str2[x] }
    hamming_difference
  end

  def self.raise_exception
    ArgumentError.new('Wrong number of Arguments')
  end
end

# Hamming.compute('GAGCCTACTAACGGGAT', 'CATCGTAATGACGGCCT')