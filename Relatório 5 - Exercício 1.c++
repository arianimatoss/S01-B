#include <iostream>
using namespace std;

int fibonacci(int n) {
    if (n == 0) {
        return 0;
    }
    else if (n == 1) {
        return 1;
    }
    else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}

int main() {
    int n;

    cout << "Digite um numero n para calcular o Fibonacci: " << endl;
    cin >> n;

    if (n < 0) {
        cout << "Digite um numero maior ou igual a zero." << endl;
    } else {
        int resultado = fibonacci(n);
        cout << "O resultado do fibonacci" << n << " é: " << resultado << endl;
    }

    return 0;
}
