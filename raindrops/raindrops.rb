class Raindrops
  VERSION = 3
  def self.convert(number)
    divisors = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }
    raindrop_string = ""
    divisors.each do |divisor, raindrop|
      raindrop_string << raindrop if number % divisor == 0
    end
    return number.to_s unless raindrop_string.empty?
    return raindrop_string
  end
end

module BookKeeping
  VERSION = 3
end 