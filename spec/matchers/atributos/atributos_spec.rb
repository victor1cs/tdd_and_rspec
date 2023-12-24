require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
    pessoa       = Pessoa.new
    pessoa.nome  = "Victor"
    pessoa.idade = 29

    expect(pessoa).to have_attributes(nome: starting_with("V"), idade: (be >= 29))
  end
end
