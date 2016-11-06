module BookKeeping
  VERSION = 3 
end

class Squares
  VERSION = 3
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def difference
    return 0 if number == 0
    square_of_sum - sum_of_squares
  end

  def sum_of_squares
    return 0 if number == 0
    (1..@number).reduce { |sum, n| sum + n**2 }
  end

  def square_of_sum
    return 0 if number == 0
    ((1..@number).reduce(:+))**2
  end

end
