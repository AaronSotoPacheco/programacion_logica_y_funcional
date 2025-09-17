suma :: Integer -> Integer ->Integer ->Integer ->Integer
suma a b c d = (a*1)+(b*5)+(c*10)+(d*50)

promedio :: Double -> Double -> Double -> Double -> Double
promedio a b c d = (a + b + c + d) / 4

volumenEsfera :: Double -> Double
volumenEsfera r = (4 / 3) * pi * r^3

comparacion :: Integer -> Integer -> Integer -> Bool
comparacion a b c = if (a==b)&&(b==c) 
    then True 
    else False

comparacion2 :: Integer -> Integer -> Integer -> Bool
comparacion2 a b c = if (a==b)&&(b==c) 
    then False 
    else True
    
precioFinal :: Double -> Double
precioFinal a
    | a > 1000 = a * 0.6
    | a > 500  = a * 0.7
    | a > 100  = a * 0.9
    | otherwise = a

ultimoDigit :: Integer -> Integer
ultimoDigit a = abs a `mod` 10

menu :: IO ()
menu = do
    putStrLn "=== MENU ==="
    putStrLn "¿Que deseas hacer?"
    putStrLn "1) Promedio de 4 numeros"
    putStrLn "2) Sume monedas donde a=$1.00, b=$5.00, c=$10.00, d=$50.00."
    putStrLn "3) Define el volumen de una esfera"
    putStrLn "4) Comparacion de 3 numeros Iguales"
    putStrLn "5) Comparacion de 3 numeros Diferentes"
    putStrLn "6) Descuentos de precios"
    putStrLn "7) Ultimo digito de un numero"
    putStrLn "0) Salir"

    opcion <- getLine
    
    case opcion of 
        "1" -> do
            putStrLn "Introduce el primer número: "
            n1 <- getLine
            let a = read n1 :: Double
            putStrLn "Introduce el segundo número: "
            n2 <- getLine
            let b = read n2 :: Double
            putStrLn "Introduce el tercer número: "
            n3 <- getLine
            let c = read n3 :: Double
            putStrLn "Introduce el cuarto número: "
            n4 <- getLine
            let d = read n4 :: Double
            putStrLn ("El resultado es: " ++ show (promedio a b c d))
            menu
        
        "2" -> do
            putStrLn "Cuantas monedas de 1: "
            n1 <- getLine
            let a = read n1 :: Integer
            putStrLn "Cuantas monedas de 5: "
            n2 <- getLine
            let b = read n2 :: Integer
            putStrLn "Cuantas monedas de 10: "
            n3 <- getLine
            let c = read n3 :: Integer
            putStrLn "Cuantas monedas de 50: "
            n4 <- getLine
            let d = read n4 :: Integer
            putStrLn ("El resultado es: " ++ show (suma a b c d))
            menu
                
        "3" -> do
            putStrLn "Ingrese el radio de la esfera "
            n1 <- getLine
            let r = read n1 :: Double
            putStrLn ("El resultado es: " ++ show (volumenEsfera r))
            menu
            
           
        "4" -> do
            putStrLn "Ingrese el primer numero: "
            n1 <- getLine
            let a = read n1 :: Integer
            putStrLn "Ingrese el segundo numero: "
            n2 <- getLine
            let b = read n2 :: Integer
            putStrLn "Ingrese el tercer numero: "
            n3 <- getLine
            let c = read n3 :: Integer
            putStrLn ("El resultado es: " ++ show (comparacion a b c))
            menu
        
        "5" -> do
            putStrLn "Ingrese el primer numero: "
            n1 <- getLine
            let a = read n1 :: Integer
            putStrLn "Ingrese el segundo numero: "
            n2 <- getLine
            let b = read n2 :: Integer
            putStrLn "Ingrese el tercer numero: "
            n3 <- getLine
            let c = read n3 :: Integer
            putStrLn ("El resultado es: " ++ show (comparacion2 a b c))
            menu
        
        "6" -> do
            putStrLn "Ingrese el precio de la compra "
            n1 <- getLine
            let a = read n1 :: Double
            putStrLn ("El resultado es: " ++ show (precioFinal a))
            menu
        
        "7" -> do
            putStrLn "Ingrese un numero "
            n1 <- getLine
            let a = read n1 :: Integer
            putStrLn ("El resultado es: " ++ show (ultimoDigit a))
            menu    

        "0" -> putStrLn "Saliendo del programa..."

        _ -> do
            putStrLn "Opción inválida, intenta de nuevo."
            menu


main :: IO ()
main = menu
