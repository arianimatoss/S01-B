package main

import (
	"fmt"
)

func verificarLogin(usuario string, senha string) bool {
	if usuario == "senha" && senha == "admin" {
		return true
	} else {
		return false
	}
}

func main() {
	for {
		var u, s string

		fmt.Println("--- Sistema de Login ---")
		fmt.Print("Digite o nome de usuário: ")
		fmt.Scanln(&u)
		fmt.Print("Digite a senha: ")
		fmt.Scanln(&s)

		if verificarLogin(u, s) {
			fmt.Println("Login bem-sucedido!")
			break 
		} else {
			fmt.Println("Usuário ou senha incorretos. Tente novamente.")
			fmt.Println("") 
		}
	}
}
