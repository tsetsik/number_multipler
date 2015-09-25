module PrimeMultiplier
  class Multiply
    def call(primes, num_primes)
      return [] if Array(primes).length != num_primes
      primes.map { |column| primes.map { |row| column * row } }
    end
  end
end
