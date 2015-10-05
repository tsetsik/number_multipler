module NumberMultiplier
  class Multiply
    def call(numbers, num_count)
      return [] if Array(numbers).length != num_count
      numbers.map { |column| numbers.map { |row| column * row } }
    end
  end
end
