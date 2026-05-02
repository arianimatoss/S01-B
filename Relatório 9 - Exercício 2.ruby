class Musico
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(obra)
    raise NotImplementedError, "Subclasses devem implementar o método tocar_partitura"
  end
end

class Pianista < Musico
  def initialize(nome)
    super(nome, "Piano")
  end

  def tocar_partitura(obra)
    puts "#{nome} está deslizando os dedos pelas teclas do piano tocando '#{obra}'."
  end
end

class Violinista < Musico
  def initialize(nome)
    super(nome, "Violino")
  end

  def tocar_partitura(obra)
    puts "#{nome} está movendo o arco sobre as cordas do violino tocando '#{obra}'."
  end
end

class Maestro
  def initialize(nome, musicos = [])
    @nome = nome
    @musicos = musicos
  end

  def iniciar_concerto(obra)
    puts "\n--- Iniciando o Concerto: #{obra} (Regência de #{@nome}) ---"
    @musicos.each do |musico|
      musico.tocar_partitura(obra)
    end
  end

  def ajustar_postura(estado)
    puts "\n--- Ajuste de Postura pelo Maestro ---"
    status = @musicos.map do |musico|
      "#{musico.nome} está em ritmo #{estado}!"
    end
    status 
  end
end

obra_prima = "Ballade No. 1 em Sol Menor"
kosei = Pianista.new("Kosei Arima")
kaori = Violinista.new("Kaori Miyazono")

maestro = Maestro.new("Seto Hiroko", [kosei, kaori])

maestro.iniciar_concerto(obra_prima)

frases_de_status = maestro.ajustar_postura("Allegro")
puts frases_de_status
