class Pessoa
  attr_accessor :nome, :idade
  attr_reader :status

  def feliz!
    @status = "Sentido-se Feliz!"
  end

  def triste!
    @status = "Sentido-se Triste!"
  end

  def contente!
    @status = "Sentido-se Contente!"
  end
end
