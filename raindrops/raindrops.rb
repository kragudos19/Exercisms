class Raindrops
  divisors = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    divisors.each do |divisor, raindrop|
      return raindrop if number % divisor == 0 
      return number
    end
  end

end
