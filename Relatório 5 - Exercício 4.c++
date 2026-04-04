#include <iostream>
using namespace std;

int main() {
    int sala[5][5] = {0}; 
    int opcao = 0;
    int fileira, coluna;

    while (opcao != 3) {
        cout << "\n--- SISTEMA DE RESERVA DE CINEMA ---" << endl;
        cout << "1. Reservar Assento" << endl;
        cout << "2. Ver Mapa da Sala" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opção: " << endl;
        cin >> opcao;

        if (opcao == 1) {
            cout << "Digite a fileira (0-4): " << endl;
            cin >> fileira;
            cout << "Digite a coluna (0-4): " << endl;
            cin >> coluna;

            if (fileira >= 0 && fileira < 5 && coluna >= 0 && coluna < 5) {
                if (sala[fileira][coluna] == 0) {
                    sala[fileira][coluna] = 1;
                    cout << "Sucesso! Assento reservado." << endl;
                } else {
                    cout << "Erro: Assento ocupado!" << endl;
                }
            } else {
                cout << "Erro: Posição inválida!" << endl;
            }

        } else if (opcao == 2) {
            cout << "\nMapa da Sala (0 = Vazio, 1 = Ocupado):" << endl;
            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    cout << "[" << sala[i][j] << "] ";
                }
                cout << endl; 
            }
        }
    }

    int ocupados = 0;
    int vazios = 0;

    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if (sala[i][j] == 1) {
                ocupados++;
            } else {
                vazios++;
            }
        }
    }

    cout << "\n--- RELATÓRIO FINAL ---" << endl;
    cout << "Quantidade total de assentos ocupados: " << ocupados << endl;
    cout << "Quantidade total de assentos vazios: " << vazios << endl;

    return 0;
}
