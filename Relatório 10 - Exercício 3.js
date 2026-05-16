class Criatura {
  nome
  perigo;

  constructor(nome, perigo) {
    this.nome = nome
    this.perigo = perigo;
  }
}

class Diario {
  _criaturas

  constructor() {
    this._criaturas = []
  }

  registrarCriatura(criatura) {
    this._criaturas.push(criatura)
  }

  listarCriaturas() {
    this._criaturas.forEach((criatura) => {
      console.log(`Nome: ${criatura.nome}`)
      console.log(`Perigo: ${criatura.perigo}`);
      console.log("-------------------")
    })
  }
}

class Personagem {
  nome;

  constructor(nome) {
    this.nome = nome
  }
}

class CabanaMisterio {
  personagens

  constructor(personagens) {
    this.personagens = personagens;
  }

  listarFuncionarios() {
    this.personagens.forEach((personagem) => {
      console.log(personagem.nome)
    });
  }
}

function main() {
  const diario = new Diario()

  const criatura1 = new Criatura(
    "Gnomo",
    "Baixo"
  )

  const criatura2 = new Criatura(
    "Gobblewonker",
    "Alto"
  );

  const criatura3 = new Criatura(
    "Fantasma",
    "Médio"
  )

  diario.registrarCriatura(criatura1);
  diario.registrarCriatura(criatura2)
  diario.registrarCriatura(criatura3);

  console.log("=== CRIATURAS ===")

  diario.listarCriaturas();

  const stan = new Personagem(
    "Grunkle Stan"
  )

  const mabel = new Personagem(
    "Mabel"
  );

  const soos = new Personagem(
    "Soos"
  )

  const cabana = new CabanaMisterio([
    stan,
    mabel,
    soos
  ])

  console.log("=== FUNCIONÁRIOS ===");

  cabana.listarFuncionarios()
}

main()
