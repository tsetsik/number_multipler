require 'spec_helper'

RSpec.describe NumberMultiplier::Table do
  subject do
    described_class.new(numbers: numbers, multiplied_numbers: multiplied_numbers)
  end

  context 'when valid primes and multiplied primes are printed out' do
    let(:num) { 10 }
    let(:numbers) { (1..10).to_a }
    let(:multiplied_numbers) { NumberMultiplier::Multiply.new.call(numbers, num) }

    it do
      expect(ConsoleTable).to receive(:define).once
      subject.call
    end
  end

  context 'when empty numbers and multiplied numbers are used' do
    let(:numbers) { [] }
    let(:multiplied_numbers) { [] }

    it do
      expect(ConsoleTable).not_to receive(:define)
      subject.call
    end
  end
end
