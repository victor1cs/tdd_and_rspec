RSpec::Matchers.define_negated_matcher :be_not_within, :be_within

describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect(10.0).to be_not_within(0.5).of(12) }
  it { expect([11.5, 11.6, 11.7, 11.8, 12.3, 12.2, 12.4]).to all ( be_within(0.5).of(12) ) }
  #it { expect(10.5).to be_within(0.5).of(12) } - falha (fora do ranged)
end
