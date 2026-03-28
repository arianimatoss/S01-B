package main

import (
	"fmt"
)

func ValidarUsuario(nome string) (bool, string) {
	if len(nome) >= 8 {
		return true, "Usuário criado com sucesso!"
	} else {
		return false, "Erro: O nome de usuário é muito curto"
	}
}

func main() {
	for {
		var nomeDigitado string
		fmt.Print("Digite um nome de usuário: ")
	
		fmt.Scanln(&nomeDigitado)

		valido, mensagem := ValidarUsuario(nomeDigitado)

		if valido {
			fmt.Println(mensagem)
			break
		} else {
			fmt.Println(mensagem)
			fmt.Println("Tente novamente...")
		}
	}
}
