#include <iostream>
using namespace std;

float multiplicaArray(float arr[], int tamanho) {
    float produto = 1.0;

    for (int i = 0; i < tamanho; i++) {
        produto *= arr[i]; 
    }

    return produto;
}

int main() {
    int n;

    cout << "Quantos valores você deseja digitar? " << endl;
    cin >> n;

    float valores[n];

    for (int i = 0; i < n; i++) {
        cout << "Digite o valor " << i + 1 << ": " << endl;
        cin >> valores[i];
    }

    float resultado = multiplicaArray(valores, n);

    cout << "O produto de todos os valores é: " << resultado << endl;

    return 0;
}
