describe 'Matchers de igualdade' do
  it '#equal - Testa se eh o mesmo objeto' do
    x = "ruby"
    y = "ruby"
    expect(x).to equal(x)
    expect(x).not_to equal(y)
  end

  it '#be - Testa se eh o mesmo objeto' do
    x = "ruby"
    y = "ruby"
    expect(x).to be(x)
    expect(x).not_to be(y)
  end

  it '#eql - Testa o valor' do
    x = "ruby"
    y = "ruby"
    expect(x).to eql(x)
    expect(x).to eql(y)
  end

  it '#eq - Testa o valor' do
    x = "ruby"
    y = "ruby"
    expect(x).to eq(x)
    expect(x).to eq(y)
  end
end
