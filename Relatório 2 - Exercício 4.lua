function calculadora(a, b, op)
    if op == "+" then return a + b

    elseif op == "-" then return a - b

    elseif op == "*" then return a * b

    elseif op == "/" then return a / b

    else return "Erro: Operador inválido!" end

end

print("Digite o primeiro número:")

local n1 = tonumber(io.read())

print("Digite o segundo número:")

local n2 = tonumber(io.read())

print("Digite o operador (+, -, *, /):")

local oper = io.read()

print("\nResultado: " .. calculadora(n1, n2, oper))
