class MicroondasTelefone
  def ativar
    puts "Banana Verde detectada! O Microondas-Telefone (nome provisório) está operando!"
  end
end

class Relatorio
  attr_reader :nome_projeto, :autor

  def initialize(nome_projeto, autor)
    @nome_projeto = nome_projeto
    @autor = autor
  end
end

class LabRegistro
  def initialize
    @microondas = MicroondasTelefone.new
    @registros = []
  end

  def adicionar_registro(nome_projeto, autor)
    @microondas.ativar
    
    novo_relatorio = Relatorio.new(nome_projeto, autor)
    @registros << novo_relatorio
    puts "Registro '#{nome_projeto}' adicionado com sucesso.\n\n"
  end

  def listar_experimentos
    puts "--- LISTA DE EXPERIMENTOS DO LAB ---"
    @registros.each do |relatorio|
      puts "Projeto: #{relatorio.nome_projeto} | Autor: #{relatorio.autor}"
    end
  end
end

lab = LabRegistro.new

lab.adicionar_registro("KRR", "Okabe Rintaro")
lab.adicionar_registro("CERN Hack", "Hashida Itaru")
lab.adicionar_registro("Operação Skuld", "Makise Kurisu")

lab.listar_experimentos
