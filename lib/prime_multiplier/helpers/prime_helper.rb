module PrimeMultiplier
  module PrimeHelper
    FIRST_PRIME = 2

    def prime?(number)
      FIRST_PRIME.upto(Math.sqrt(number).to_i) do |divider|
        return false if number % divider == 0
      end
      true
    end
  end
end
