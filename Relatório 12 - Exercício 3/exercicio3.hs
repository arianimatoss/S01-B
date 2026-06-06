data Banda = Banda String String Double
    deriving Show

data StatusEvento = Ativo | Encerrado | Cancelado
    deriving (Show, Eq)

data Evento = Evento [Banda] StatusEvento
    deriving Show

custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento _ Cancelado) = 0

custoTotalEvento (Evento bandas _) =
    subtotal * 1.20
    where
        subtotal =
            sum [cache | Banda _ _ cache <- bandas]

bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) =
    "Nenhuma banda cadastrada"

bandaAbertura (Evento ((Banda nome _ _):_) _) =
    nome

bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) =
    "Nenhuma banda cadastrada"

bandaEncerramento (Evento bandas _) =
    let Banda nome _ _ = last bandas
    in nome

main :: IO ()
main = do
    let b1 = Banda "Iron Kingdom" "Metal" 5000
    let b2 = Banda "Blue Notes" "Jazz" 3000
    let b3 = Banda "Rock Legends" "Rock" 7000

    let eventoAtivo =
            Evento [b1, b2, b3] Ativo

    let eventoEncerrado =
            Evento [b2, b3] Encerrado

    let eventoCancelado =
            Evento [b1] Cancelado

    putStrLn "Evento Ativo"
    print (custoTotalEvento eventoAtivo)
    putStrLn (bandaAbertura eventoAtivo)
    putStrLn (bandaEncerramento eventoAtivo)

    putStrLn "\nEvento Encerrado"
    print (custoTotalEvento eventoEncerrado)
    putStrLn (bandaAbertura eventoEncerrado)
    putStrLn (bandaEncerramento eventoEncerrado)

    putStrLn "\nEvento Cancelado"
    print (custoTotalEvento eventoCancelado)
    putStrLn (bandaAbertura eventoCancelado)
    putStrLn (bandaEncerramento eventoCancelado)