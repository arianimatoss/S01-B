module Localizavel
  def local_atual(localizacao)
    puts "#{nome} está atualmente em: #{localizacao}."
  end
end

module Perigoso
  def exibir_ameaca
    puts "ALERTA: #{nome} apresenta um comportamento suspeito e perigoso!"
  end
end

class Pessoa
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class Testemunha < Pessoa
  include Localizavel
end

class Suspeito < Pessoa
  include Localizavel
  include Perigoso
end

class CenaDoCrime
  def initialize
    @pessoas = []
  end

  def adicionar_pessoa(pessoa)
    @pessoas << pessoa
  end

  def listar_todos
    puts "\n--- Pessoas na Cena do Crime ---"
    @pessoas.each { |p| puts "- #{p.nome} (#{p.class})" }
  end

  def identificar_perigosos
    puts "\n--- Analisando Periculosidade (Introspecção) ---"
    perigosos = @pessoas.select { |p| p.respond_to?(:exibir_ameaca) }
    
    perigosos.each(&:exibir_ameaca)
    perigosos
  end
end

testemunha = Testemunha.new("Sra. Hudson")
suspeito1 = Suspeito.new("Sebastian Moran")
suspeito2 = Suspeito.new("Jim Moriarty")

cena = CenaDoCrime.new
cena.adicionar_pessoa(testemunha)
cena.adicionar_pessoa(suspeito1)
cena.adicionar_pessoa(suspeito2)

testemunha.local_atual("221B Baker Street")
suspeito1.local_atual("Beco escuro próximo à cena")

cena.listar_todos
perigosos_detectados = cena.identificar_perigosos

puts "\nTotal de ameaças identificadas por Sherlock: #{perigosos_detectados.size}"
