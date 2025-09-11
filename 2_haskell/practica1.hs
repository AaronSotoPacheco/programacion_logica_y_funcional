absoluto :: Integer -> Integer
absoluto x = abs x

ceil :: Double -> Integer
ceil y = ceiling  y 

suc :: Integer -> Integer
suc z = succ z

mini :: Double -> Double -> Double
mini a s = min a s

maxi :: Double -> Double -> Double
maxi q w  = max q w 

dividir :: Integer -> Integer -> Integer
dividir x y = div x y 

mood :: Integer -> Integer -> Integer
mood x y = mod x y

eevee :: Integer -> Bool
eevee x = even x 

fluor :: Double -> Integer
fluor x = floor x 

jcd :: Integer -> Integer -> Integer
jcd x y = gcd x y

no :: Bool -> Bool 
no x = not x 

od :: Integer -> Bool
od x = odd x 

sigma :: Integer -> Integer 
sigma x = signum x 

nds :: Integer -> Integer -> Integer
nds x y = snd (x,y) 


menu ::IO()
menu = do
    putStrLn("=== MENU")
    putStrLn("¿Que deseas hacer?")
    putStrLn("1) Valor absoluto de un numero")
    putStrLn("2) Devuelve el valor siguiente de x")
    putStrLn("3) Devuelve el valor siguiente de un numero entero")
    putStrLn("4) Obtiene el numero menor")
    putStrLn("5) Obtiene el numero mayor")
    putStrLn("6) Divide el primer numero con el segundo")
    putStrLn("7) Obtiene el modulo de la division")
    putStrLn("8) Define el numero es par ")
    putStrLn("9) numero mayor entero no mayor que x")
    putStrLn("10) Define el minimo comun multiplo")
    putStrLn("11) Define una negacion de estado")
    putStrLn("12) Define el numero es impar ")
    putStrLn("13) devuelve 1 si es positivo, -1 si es negativo")
    putStrLn("14) Elige el segundo numero de la tupla")
    
    opcion <- getLine
    
    case opcion of 
    
        "1" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++ show(absoluto x))
            menu
            
        "2" -> do 
            putStrLn("Introduce un numero decimal: ")
            n2 <- getLine 
            let y = read n2 :: Double
            putStrLn("El resultado es: "++ show (ceil y))
            menu
       
        "3" -> do
            putStrLn("Introduce un numero: ")
            n3 <- getLine 
            let z = read n3 :: Integer
            putStrLn("El resultado es: "++ show (suc z))
            menu
            
        "4" -> do
            putStrLn("Introduce el primer numero: ")
            n4 <- getLine 
            let a = read n4 :: Double
            putStrLn("Introduce el segundo numero: ")
            n5 <- getLine 
            let s = read n5 :: Double
            putStrLn("El resultado es: "++ show (mini a s))
            menu
            
        "5" -> do
            putStrLn("Introduce el primer numero: ")
            n6 <- getLine 
            let q = read n6 :: Double
            putStrLn("Introduce el segundo numero: ")
            n7 <- getLine 
            let w = read n7 :: Double
            putStrLn("El resultado es: "++ show (maxi q w))
            menu
            
        "6" -> do
            putStrLn("Introduce el primer numero: ")
            n8 <- getLine 
            let x = read n8 :: Integer
            putStrLn("Introduce el segundo numero: ")
            n9 <- getLine 
            let y = read n9 :: Integer
            putStrLn("El resultado es: "++ show (dividir x y))
            menu
        
        "7" -> do
            putStrLn("Introduce el primer numero: ")
            n10 <- getLine 
            let x = read n10 :: Integer
            putStrLn("Introduce el segundo numero: ")
            n11 <- getLine 
            let y = read n11 :: Integer
            putStrLn("El resultado es: "++ show (mood x y))
            menu    
        
        "8" -> do
            putStrLn("Introduce un numero: ")
            n12 <- getLine 
            let x = read n12 :: Integer
            putStrLn("El resultado es: "++ show (eevee x))
            menu
              
        "9" -> do
            putStrLn("Introduce un numero: ")
            n13 <- getLine 
            let x = read n13 :: Double
            putStrLn("El resultado es: "++ show (fluor x))
            menu
            
        "10" -> do
            putStrLn("Introduce un numero: ")
            n14 <- getLine 
            let x = read n14 :: Integer
            putStrLn("Introduce un numero: ")
            n15 <- getLine 
            let y = read n15 :: Integer
            putStrLn("El resultado es: "++ show (jcd x y))
            menu
            
        "11" -> do
            putStrLn("Introduce un estado (True/False) ")
            n16 <- getLine 
            let x = read n16:: Bool
            putStrLn("El resultado es: "++ show (no x))
            menu
            
        "12" -> do
            putStrLn("Introduce un numero:")
            n17 <- getLine 
            let x = read n17:: Integer
            putStrLn("El resultado es: "++ show (od x))
            menu
            
        "13" -> do
            putStrLn("Introduce un numero: ")
            n18 <- getLine 
            let x = read n18 :: Integer
            putStrLn("El resultado es: "++ show (sigma x))
            menu
            
        "14" -> do
            putStrLn("Introduce un numero: ")
            n19 <- getLine 
            let x = read n19 :: Integer
            putStrLn("Introduce un numero: ")
            n20 <- getLine 
            let y = read n20 :: Integer
            putStrLn("El resultado es: "++ show (nds x y))
            menu
    
 
main :: IO ()
main = menu