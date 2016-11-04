module BookKeeping
  VERSION = 3 
end

class Squares 
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def difference
    return 0 if number == 0
    number_conversion(square_of_sum - sum_of_squares)
  end

  def sum_of_squares
    return 0 if number == 0
    (1..@number).reduce(1) { |sum, n| sum + n**2 }
  end

  def square_of_sum
    return 0 if number == 0
    ((1..@number).reduce(:+))**2
  end

  private
  def number_conversion(number_to_convert)
    converted_number = ""
    number_to_convert.to_s.split.each_with_index do |value, idx|
      if (idx + 1) % 3 == 0
        converted_number << "_"
      else
        converted_number << value
      end
    end
    return converted_number
  end
end