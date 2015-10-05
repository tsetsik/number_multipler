require 'spec_helper'

RSpec.describe NumberMultiplier::Multiply do
  subject do
    described_class.new
  end

  context 'when valid primes are multiplied' do
    let(:num) { 10 }
    let(:numbers) { NumberMultiplier::PrimeGenerator.new.call(num) }

    it { expect(subject.call(numbers, num)).to be_an Array }
    it { expect(subject.call(numbers, num).length).to eq num }
  end

  context 'when empty primes are used' do
    let(:num) { 10 }
    let(:numbers) { [] }

    it { expect(subject.call(numbers, num)).to be_an Array }
    it { expect(subject.call(numbers, num)).to be_empty }
  end
end
