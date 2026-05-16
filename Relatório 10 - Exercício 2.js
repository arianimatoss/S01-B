class Habilidade {
  usar() {
    throw new Error("Habilidade deve ser sobrescrita");
  }
}

class Smoke extends Habilidade {
  usar() {
    console.log("Usando habilidade Smoke");
  }
}

class Flash extends Habilidade {
  usar() {
    console.log("Usando habilidade Flash");
  }
}

class Dash extends Habilidade {
  usar() {
    console.log("Usando habilidade Dash");
  }
}

class Armadilha extends Habilidade {
  usar() {
    console.log("Usando habilidade Armadilha");
  }
}

class Agente {
  nome;
  funcao;
  _habilidade;

  constructor(nome, funcao, habilidade) {
    this.nome = nome;
    this.funcao = funcao;
    this._habilidade = habilidade;
  }

  entrarEmCombate() {
    console.log(`Agente: ${this.nome}`);
    console.log(`Função: ${this.funcao}`);

    this._habilidade.usar();
  }
}

class Time {
  agentes;

  constructor(agentes) {
    this.agentes = agentes;
  }

  iniciarPartida() {
    this.agentes.forEach((agente) => {
      agente.entrarEmCombate();
    });
  }

  listarControladores() {
    return this.agentes.filter(
      (agente) => agente._habilidade instanceof Smoke
    );
  }
}

function main() {
  const omen = new Agente(
    "Omen",
    "Controlador",
    new Smoke()
  );

  const skye = new Agente(
    "Skye",
    "Iniciador",
    new Flash()
  );

  const jett = new Agente(
    "Jett",
    "Duelista",
    new Dash()
  );

  const cypher = new Agente(
    "Cypher",
    "Sentinela",
    new Armadilha()
  );

  const time = new Time([
    omen,
    skye,
    jett,
    cypher
  ]);

  console.log("=== INICIANDO PARTIDA ===");
  time.iniciarPartida();

  console.log("=== CONTROLADORES ===");

  const controladores =
    time.listarControladores();

  controladores.forEach((agente) => {
    console.log(agente.nome);
  });
}

main();
