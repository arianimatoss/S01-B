print("Digite o primeiro valor:")
local m = tonumber(io.read())

print("Digite o segundo valor:")
local n = tonumber(io.read())

print("Digite o número X que deseja calcular a tabuada:")
local x = tonumber(io.read())

for i = m, n do
    local resultado = x * i
    print(x .. " x " .. i .. " = " .. resultado)
end
