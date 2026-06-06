data Bebida = Bebida String Double
    deriving Show

data StatusPedido = Aberto | Entregue | Cancelado
    deriving (Show, Eq)

data Pedido = Pedido [Bebida] StatusPedido
    deriving Show

valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido _ Cancelado) = 0
valorTotalPedido (Pedido bebidas _) =
    sum [preco | Bebida _ preco <- bebidas]

primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _) =
    "Lista de bebidas vazia"

primeiraBebida (Pedido ((Bebida nome _):_) _) =
    nome

main :: IO ()
main = do
    let cafe = Bebida "Cafe" 8.0
    let cha = Bebida "Cha" 6.0

    let pedidoEntregue =
            Pedido [cafe, cha] Entregue

    let pedidoCancelado =
            Pedido [cafe] Cancelado

    putStrLn "Pedido Entregue:"
    print (valorTotalPedido pedidoEntregue)
    putStrLn (primeiraBebida pedidoEntregue)

    putStrLn "\nPedido Cancelado:"
    print (valorTotalPedido pedidoCancelado)
    putStrLn (primeiraBebida pedidoCancelado)