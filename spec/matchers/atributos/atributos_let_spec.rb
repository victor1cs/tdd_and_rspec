require 'pessoa'

describe 'Atributos' do

  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa.nome  = "Victor"
    pessoa.idade = 29

    expect(pessoa).to have_attributes(nome: starting_with("V"), idade: (be >= 29))
  end

  it 'have_attributes' do
    pessoa.nome  = "JOSE"
    pessoa.idade = 25

    expect(pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 20))
  end
end
