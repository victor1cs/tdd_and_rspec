require 'pessoa'

describe 'Atributos' do

  # before(:each) do
  #   puts "ANTES"
  #   @pessoa = Pessoa.new
  #   puts "#{@pessoa.inspect}"
  # end

  # after(:each) do
  #   @pessoa.nome = "resetado o nome"
  #   puts "DEPOIS >>>>> #{@pessoa.inspect}"
  # end

  around(:each) do |teste|
    puts "ANTES"
    @pessoa = Pessoa.new
    puts "#{@pessoa.inspect}"

    teste.run #roda o teste

    @pessoa.nome = "resetado o nome"
    puts "DEPOIS >>>>> #{@pessoa.inspect}"
  end

  it 'have_attributes' do
    @pessoa.nome  = "Victor"
    @pessoa.idade = 29

    expect(@pessoa).to have_attributes(nome: starting_with("V"), idade: (be >= 29))
  end

  it 'have_attributes' do
    @pessoa.nome  = "JOSE"
    @pessoa.idade = 25

    expect(@pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 20))
  end
end
