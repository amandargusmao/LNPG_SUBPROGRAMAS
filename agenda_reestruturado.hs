import Data.List

type Evento = String
type Agenda = [Evento]

main :: IO ()
main = do
    putStrLn "Bem-vindo ao Gerenciador de Agenda!"
    loop []

loop :: Agenda -> IO ()
loop agenda = do
    putStrLn "\nSelecione uma opção:"
    putStrLn "1. Adicionar evento"
    putStrLn "2. Remover evento"
    putStrLn "3. Visualizar agenda"
    putStrLn "4. Sair"
    opcao <- getLine
    case opcao of
        "1" -> adicionarEvento agenda >>= loop
        "2" -> removerEvento agenda >>= loop
        "3" -> visualizarAgenda agenda >> loop agenda
        "4" -> putStrLn "Saindo do programa..."
        _   -> putStrLn "Opção inválida. Tente novamente." >> loop agenda

adicionarEvento :: Agenda -> IO Agenda
adicionarEvento agenda = do
    putStrLn "Digite o evento a ser adicionado:"
    evento <- getLine
    return (agenda ++ [evento])

removerEvento :: Agenda -> IO Agenda
removerEvento agenda = do
    putStrLn "Digite o índice do evento a ser removido:"
    indiceStr <- getLine
    let indice = read indiceStr
        novaAgenda = delete (agenda !! indice) agenda
    return novaAgenda

visualizarAgenda :: Agenda -> IO ()
visualizarAgenda agenda = do
    putStrLn "Eventos na Agenda:"
    mapM_ putStrLn agenda