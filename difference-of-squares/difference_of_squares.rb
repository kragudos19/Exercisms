module BookKeeping
  VERSION = 3 
end

class Squares 
  def initialize(number)
    self.number = number
  end

  def difference
    return 0 if self.number == 0
    square_of_sums - sum_of_squares
  end

  def sum_of_squares
    return 0 if self.number == 0
    (1..self.number).reduce(1) { |sum, n| sum**2 + n**2 }
  end

  def square_of_sums
    return 0 if self.number == 0
    ((1..self.number).reduce(:+))**2
  end

  private
  def number_conversion(number_to_convert)
    number_to_convert.each_with_index do |value, idx|
      # if idx 
    end
  end
end