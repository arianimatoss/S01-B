class Hunter {
  nome

  constructor(nome) {
    this.nome = nome;
  }

  lutar() {
    console.log(`${this.nome} está lutando`)
  }
}

class Gon extends Hunter {
  lutar() {
    console.log(`${this.nome} usou Jajanken`)
  }
}

class Killua extends Hunter {
  lutar() {
    console.log(`${this.nome} usou Godspeed`);
  }
}

class Kurapika extends Hunter {
  lutar() {
    console.log(`${this.nome} usou suas correntes`)
  }
}

class TrupeFantasma {
  nome;
  membros

  constructor(nome, membros) {
    this.nome = nome
    this.membros = membros;
  }

  revelarMembros() {
    console.log(`Trupe: ${this.nome}`)

    this.membros.forEach((membro) => {
      console.log(membro)
    })
  }
}

function main() {
  const gon = new Gon("Gon")

  const killua = new Killua(
    "Killua"
  );

  const kurapika = new Kurapika("Kurapika")

  gon.lutar()
  killua.lutar();
  kurapika.lutar()

  console.log("-------------------")

  const trupe = new TrupeFantasma(
    "Trupe Fantasma",
    [
      "Chrollo",
      "Hisoka",
      "Feitan"
    ]
  )

  trupe.revelarMembros();
}

main()
