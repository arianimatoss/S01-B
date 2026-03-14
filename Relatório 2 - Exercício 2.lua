print("Digite N:")
local N = io.read("*number")

local maior

for i = 1, N do
    print("Digite um numero:")
    local num = io.read("*number")

    if i == 1 or num > maior then
        maior = num
    end
end

print("Maior numero:", maior)
