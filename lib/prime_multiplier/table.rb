require 'console_table'

module PrimeMultiplier
  class Table
    def initialize(primes:, multiplied_primes:)
      @primes = Array(primes)
      @multiplied_primes = Array(multiplied_primes)
    end

    def call
      return if @primes.empty? || @multiplied_primes.empty?

      ConsoleTable.define(header, title: 'Prime Multiplication Table') do |table|
        # :nocov:
        @multiplied_primes.each_with_index do |row, index|
          table << [@primes[index]] + row
        end

        table.footer << 'By Tsvetomir Demerdjiev: tsetsik@gmail.com'
        # :nocov:
      end
    end

    private

    def header
      @header ||= [''] + @primes.map(&:to_s)
    end
  end
end
