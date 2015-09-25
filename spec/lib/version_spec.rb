require 'spec_helper'

RSpec.describe PrimeMultiplier::Version do
  context 'has version constants' do
    it { expect(described_class::MAJOR).to be_integer }
    it { expect(described_class::MINOR).to be_integer }
    it { expect(described_class::PATCH).to be_integer }
  end

  context 'has version number' do
    it { expect(described_class).to_not be_nil }
  end
end
