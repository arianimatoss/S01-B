class BebidaAfterlife
  attr_reader :nome

  def initialize(nome, custo_base)
    @_nome = nome
    self.custo_base = custo_base 
  end

  def custo_base
    @_custo_base
  end

  def custo_base=(valor)
    if valor > 0
      @_custo_base = valor
    else
      puts "Erro: O custo deve ser maior que zero!"
      @_custo_base = 1 
    end
  end

  def preco_total
    custo_base
  end

  def to_string
    "Bebida: #{@_nome} | Valor Final: $#{preco_total}"
  end
end

class DrinkIconico < BebidaAfterlife
  attr_accessor :nivel_notoriedade

  def initialize(nome, custo_base, nivel_notoriedade)
    super(nome, custo_base)
    @nivel_notoriedade = nivel_notoriedade
  end

  def preco_total
    custo_base + (@nivel_notoriedade * 8)
  end

  def to_string
    "Drink Icónico: #{@_nome} | Valor Final: $#{preco_total} (Notoriedade: #{@nivel_notoriedade})"
  end
end

drinks = []
drinks << BebidaAfterlife.new("Cerveja Sintética", 15)
drinks << DrinkIconico.new("Johnny Silverhand", 50, 10)
drinks << DrinkIconico.new("Jackie Welles", 40, 5)

puts "--- MENU AFTERLIFE ---"
drinks.each do |drink|
  puts drink.to_string
end
