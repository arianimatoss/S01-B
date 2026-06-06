data Servico = Servico
    {
        nome :: String,
        tipo :: String,
        preco :: Double
    } deriving Show

data StatusAtendimento =
      EmAndamento
    | Finalizado
    | Cancelado
    deriving (Show, Eq)

data Atendimento = Atendimento
    {
        servicos :: [Servico],
        status :: StatusAtendimento
    } deriving Show

totalServicos :: [Servico] -> Double
totalServicos lista =
    sum (map preco lista)

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento atendimento
    | status atendimento == Cancelado = 0
    | length (servicos atendimento) > 3 = total * 1.25
    | otherwise = total
    where
        total = totalServicos (servicos atendimento)

primeiroServico :: Atendimento -> String
primeiroServico (Atendimento [] _) =
    "Lista de servicos vazia"

primeiroServico (Atendimento ((Servico nome _ _):_) _) =
    nome

main :: IO ()
main = do
    let banho =
            Servico "Banho Espiritual" "Banho" 100

    let massagem =
            Servico "Massagem Relaxante" "Massagem" 80

    let aromaterapia =
            Servico "Aromaterapia" "Relaxamento" 60

    let limpeza =
            Servico "Limpeza Mistica" "Purificacao" 120

    let atendimento1 =
            Atendimento
                [banho, massagem]
                Finalizado

    let atendimento2 =
            Atendimento
                [banho, massagem, aromaterapia, limpeza]
                EmAndamento

    putStrLn "Atendimento 1"
    putStrLn ("Primeiro servico: " ++ primeiroServico atendimento1)
    putStrLn ("Valor final: " ++ show (valorFinalAtendimento atendimento1))

    putStrLn ""

    putStrLn "Atendimento 2"
    putStrLn ("Primeiro servico: " ++ primeiroServico atendimento2)
    putStrLn ("Valor final: " ++ show (valorFinalAtendimento atendimento2))