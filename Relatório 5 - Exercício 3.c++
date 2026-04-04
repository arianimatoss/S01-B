#include <iostream>
#include <iomanip> 
using namespace std;

int main() {
    float saldo, valor;
    int opcao;

    cout << fixed << setprecision(2);

    cout << "Informe o seu saldo inicial: R$ ";
    cin >> saldo;

    do {
        cout << "\n--- MENU DE OPÇÕES ---" << endl;
        cout << "1. Ver Saldo" << endl;
        cout << "2. Depositar" << endl;
        cout << "3. Sacar" << endl;
        cout << "4. Sair" << endl;
        cout << "Escolha uma opção: " << endl;
        cin >> opcao;

        switch (opcao) {
            case 1:
                cout << "Seu saldo atual é: R$ " << saldo << endl;
                break;

            case 2:
                cout << "Digite o valor do deposito: R$ ";
                cin >> valor;
                cout << valor;
                if (valor > 0) {
                    saldo += valor;
                    cout << "\nDeposito realizado com sucesso!" << endl;
                } else {
                    cout << "Valor invalido para deposito." << endl;
                }
                break;

            case 3:
                cout << "Digite o valor do saque: R$ ";
                cin >> valor;
                cout << valor;
                if (valor > saldo) {
                    cout << "\nSaldo Insuficiente!" << endl;
                } else if (valor <= 0) {
                    cout << "Valor invalido para saque." << endl;
                } else {
                    saldo -= valor;
                }
                break;

            case 4:
                cout << "Saindo...." << endl;
                break;

            default:
                cout << "Opção invalida! Tente novamente." << endl;
                break;
        }

    } while (opcao != 4); 
    return 0;
}
