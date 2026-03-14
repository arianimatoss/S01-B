print("Quantos números (N)?")
local n = io.read("*n")
local original, impares = {}, {}

for i = 1, n do
    print("Digite o " .. i .. "º valor:")
    original[i] = io.read("*n")
end

for i = 1, #original do
    if original[i] % 2 ~= 0 then
        table.insert(impares, original[i])
    end
end

print("\nNúmeros ímpares encontrados:")
for i = 1, #impares do
    print(impares[i])
end
