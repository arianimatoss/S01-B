class Pokemon {
  nome;
  tipo;
  
  _vida = 100;
  
  atacar() {
    throw new Error("Metodo atacar deve ser implementado")
  }
  
  receber_dano(dano) {
    this._vida = this._vida - dano;
  }
  
  getVida() {
    return this._vida;
  }
}

class Pikachu extends Pokemon {
  atacar() {
    let dano_causado = 5;
    return dano_causado;
  }
}

class Charizard extends Pokemon {
  atacar() {
    let dano_causado = 10;
    return dano_causado;
  }
}

function main() {
  const charizard = new Charizard()
  const pikachu = new Pikachu()
  
  const dano_causado_pelo_pikachu = pikachu.atacar()
  charizard.receber_dano(dano_causado_pelo_pikachu)
  
  const dano_causado_pelo_charizard = charizard.atacar()
  pikachu.receber_dano(dano_causado_pelo_charizard)
  
  console.log("Vida do pikachu: " + pikachu.getVida())
  console.log("Vida do charizard: " + charizard.getVida())
}

main()
