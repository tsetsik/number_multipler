require 'spec_helper'

RSpec.describe PrimeMultiplier::Multiply do
  subject do
    described_class.new
  end

  context 'when valid primes are multiplied' do
    let(:num_primes) { 10 }
    let(:primes) { PrimeMultiplier::NumberGenerator.new.call(num_primes) }

    it { expect(subject.call(primes, num_primes)).to be_an Array }
    it { expect(subject.call(primes, num_primes).length).to eq num_primes }
  end

  context 'when empty primes are used' do
    let(:num_primes) { 10 }
    let(:primes) { [] }

    it { expect(subject.call(primes, num_primes)).to be_an Array }
    it { expect(subject.call(primes, num_primes)).to be_empty }
  end
end
