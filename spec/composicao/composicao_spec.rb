# RSpec.configure do |config|
#   config.include Helper
# end
describe 'Ruby on Rails' do
  it { is_expected.to start_with("Ruby").and end_with("Rails") }
  it { expect(fruta).to eq('banana').or eq('laranja').or eq('uva') }
  
  # def fruta #helper method arbitrario
  #   %w(banana laranja uva).sample
  # end
end
