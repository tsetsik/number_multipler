require 'console_table'

module NumberMultiplier
  class Table
    def initialize(numbers:, multiplied_numbers:)
      @numbers = Array(numbers)
      @multiplied_numbers = Array(multiplied_numbers)
    end

    def call
      return if @numbers.empty? || @multiplied_numbers.empty?

      ConsoleTable.define(header, title: 'Number Multiplication Table') do |table|
        # :nocov:
        @multiplied_numbers.each_with_index do |row, index|
          table << [@numbers[index]] + row
        end
        # :nocov:
      end
    end

    private

    def header
      @header ||= [''] + @numbers.map(&:to_s)
    end
  end
end
