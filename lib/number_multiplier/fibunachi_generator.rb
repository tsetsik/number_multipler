module NumberMultiplier
  class FibunachiGenerator
    def initialize
      @start = [0, 1]
    end

    def call(num_count)
      return [] if !num_count.respond_to?(:to_i) || num_count.to_i <= 0

      fib(num_count)
    end

    private

    def fib(num)
      return [] if num <= 0
      return [0] if num == 1

      @start.tap do |nums|
        nums << nums.last(2).inject(:+) while nums.size < num
      end
    end
  end
end
