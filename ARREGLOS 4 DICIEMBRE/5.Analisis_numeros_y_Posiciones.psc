Algoritmo Analisis_numeros_y_Posiciones
    
    Definir MAX_NUMEROS Como Entero;
    Definir Numeros Como Entero;
    Definir i Como Entero;
    
    
    Definir suma_pares, cuenta_pares Como Entero;
    Definir suma_impares, cuenta_impares Como Entero;
    Definir promedio_pares, promedio_impares Como Real;
    
    
    Definir suma_pos_pares, suma_pos_impares Como Entero;
    
    MAX_NUMEROS <- 10;
    Dimension Numeros[MAX_NUMEROS];
    
    
    suma_pares <- 0; cuenta_pares <- 0;
    suma_impares <- 0; cuenta_impares <- 0;
    suma_pos_pares <- 0; suma_pos_impares <- 0;
    
    Escribir "--- EJERCICIO 5: ANÁLISIS DE PARES E IMPARES ---";
    
    
    Para i = 1  Hasta MAX_NUMEROS  Con Paso 1 Hacer
        Escribir "Ingrese el número entero para la posición ", i, ":";
        Leer Numeros[i];
    FinPara
    
    Para i = 1  Hasta MAX_NUMEROS  Con Paso 1 Hacer
        
        
        Si (Numeros[i] MOD 2) = 0 Entonces
            
            suma_pares = suma_pares + Numeros[i];
            cuenta_pares = cuenta_pares + 1;
        Sino
            
            suma_impares = suma_impares + Numeros[i];
            cuenta_impares = cuenta_impares + 1;
        FinSi
        
        
        Si (i MOD 2) = 0 Entonces
            
            suma_pos_pares <- suma_pos_pares + Numeros[i];
        Sino
            
            suma_pos_impares <- suma_pos_impares + Numeros[i];
        FinSi
        
    FinPara
    
    Escribir "";
    Escribir "/&/ RESULTADOS /&/";
    
    
    Escribir "/&/ PROMEDIOS POR VALOR:";
    Si cuenta_pares > 0 Entonces
        promedio_pares = suma_pares / cuenta_pares;
        Escribir "Promedio de números PARES: ", promedio_pares;
    Sino
        Escribir "No se ingresaron números pares. (Promedio: 0)";
    FinSi
    
    Si cuenta_impares > 0 Entonces
        promedio_impares = suma_impares / cuenta_impares;
        Escribir "Promedio de números IMPARES: ", promedio_impares;
    Sino
        Escribir "No se ingresaron números impares. (Promedio: 0)";
    FinSi
    
    Escribir "/&/ SUMAS POR POSICIÓN:";
    Escribir "Suma de elementos en POSICIONES PARES (0, 2, 4, etc.): ", suma_pos_pares;
    Escribir "Suma de elementos en POSICIONES IMPARES (1, 3, 5, etc.): ", suma_pos_impares;
    
FinAlgoritmo