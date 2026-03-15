Algoritmo Suma_digitos_numeros
   
    Definir MAX_Posiciones Como Entero;
    Definir Entrada, SumaDigitos Como Entero;
    Definir i, digito1, digito2 Como Entero;
    
    MAX_Posiciones = 10;
    Dimension Entrada[MAX_Posiciones];
    Dimension SumaDigitos[MAX_Posiciones];
    
    Escribir "/&/ EJERCICIO 3: SUMA DE DÍGITOS /&/";
    
    
    Para i = 1  Hasta MAX_Posiciones Con Paso 1 Hacer
        Repetir
            Escribir "Ingrese el número ", i+1, " (de 2 dígitos):";
            Leer Entrada[i];
            Si (Entrada[i] < 10) O (Entrada[i] > 99) Entonces
                Escribir "Error: El número debe ser positivo y de dos dígitos (entre 10 y 99).";
            FinSi
        Hasta Que (Entrada[i] >= 10) Y (Entrada[i] <= 99);
    FinPara
    
    
    Para i = 1  Hasta MAX_POSICIONES Con Paso 1 Hacer
        
        digito1 = trunc(Entrada[i] / 10);
        
        digito2 = Entrada[i] MOD 10;
        
        SumaDigitos[i] = digito1 + digito2;
    FinPara
    
    Escribir "";
    Escribir "/&/ RESULTADOS /&/";
    Escribir "Pos /// Arreglo Entrada /// Suma de Dígitos";
    Escribir "---------------------------------------";
    
    
    Para i = 1  Hasta MAX_Posiciones Con Paso 1 Hacer
        Escribir i, "   ///      ", Entrada[i], "        ///      ", SumaDigitos[i];
    FinPara
    
FinAlgoritmo