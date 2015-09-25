module NumberGeneratorHelper
  def prime?(number)
    first_prime = PrimeMultiplier::NumberGenerator::FIRST_PRIME
    first_prime.upto(Math.sqrt(number).to_i) do |divider|
      return false if number % divider == 0
    end
    true
  end
end
