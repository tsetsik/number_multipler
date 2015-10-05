require './lib/number_multiplier/helpers/number_helper'

module NumberMultiplier
  class PrimeGenerator
    include NumberMultiplier::NumberHelper

    FIRST_PRIME = 2

    def initialize
      @primes = [FIRST_PRIME]
      @current = FIRST_PRIME
    end

    def call(num_primes)
      return [] if !num_primes.respond_to?(:to_i) || num_primes.to_i <= 0

      @primes.tap do |prime_list|
        prime_list << @current if prime?(next_posible) while prime_list.size < num_primes
      end
    end

    private

    def next_posible
      @current += 1
    end
  end
end
