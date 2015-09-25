require 'spec_helper'

RSpec.describe PrimeMultiplier::Table do
  subject do
    described_class.new(primes: primes, multiplied_primes: multiplied_primes)
  end

  context 'when valid primes and multiplied primes are printed out' do
    let(:num_primes) { 10 }
    let(:primes) { PrimeMultiplier::NumberGenerator.new.call(num_primes) }
    let(:multiplied_primes) { PrimeMultiplier::Multiply.new.call(primes, num_primes) }

    it do
      expect(ConsoleTable).to receive(:define).once
      subject.call
    end
  end

  context 'when empty primes and multiplied primes are used' do
    let(:primes) { [] }
    let(:multiplied_primes) { [] }

    it do
      expect(ConsoleTable).not_to receive(:define)
      subject.call
    end
  end
end
