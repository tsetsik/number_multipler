module NumberMultiplier
  class GenericGenerator
    class << self
      def call(type, num_count)
        if type == 'primes'
          NumberMultiplier::PrimeGenerator.new.call(num_count)
        else
          NumberMultiplier::FibunachiGenerator.new.call(num_count)
        end
      end
    end
  end
end
