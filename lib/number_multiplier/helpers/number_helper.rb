module NumberMultiplier
  module NumberHelper
    def prime?(number)
      first_prime = NumberMultiplier::PrimeGenerator::FIRST_PRIME
      first_prime.upto(Math.sqrt(number).to_i) do |divider|
        return false if number % divider == 0
      end
      true
    end
  end
end
