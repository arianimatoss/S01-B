data Item = Item String String Double
    deriving Show

data StatusCompra = Pendente | Concluida | Cancelada
    deriving (Show, Eq)

data Compra = Compra [Item] StatusCompra
    deriving Show

totalItens :: [Item] -> Double
totalItens itens =
    sum [preco | Item _ _ preco <- itens]

valorFinal :: Compra -> Double
valorFinal (Compra _ Cancelada) = 0

valorFinal (Compra itens _) =
    if total > 200
        then total * 0.9
        else total
    where total = totalItens itens

main :: IO ()
main = do
    let espada = Item "Espada Mestre" "Arma" 120
    let escudo = Item "Escudo Hyliano" "Defesa" 100
    let pocao = Item "Pocao" "Consumivel" 30

    let compra =
            Compra [espada, escudo, pocao] Concluida

    print (valorFinal compra)