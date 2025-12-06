Algoritmo Suma_de_la_diagonal_principal
    
    Definir N Como Entero;
    Definir Matriz Como Entero; 
    Definir i, j Como Entero;
    Definir suma_diagonal Como Entero;
    
    Escribir "/&/ EJERCICIO 7: SUMA DE LA DIAGONAL PRINCIPAL /&/";
    Escribir "Ingrese el tamaño (N) de la matriz cuadrada (N x N):";
    Leer N;
    
    Dimension Matriz[N, N];
    suma_diagonal = 0;
    
    Escribir "-> INGRESO DE DATOS EN LA MATRIZ:";
    
    
    Para i = 1  Hasta N  Con Paso 1 Hacer
        Para j = 1  Hasta N  Con Paso 1 Hacer
            Escribir "Ingrese valor para la posición [", i, "][", j, "]:";
            Leer Matriz[i, j];
        FinPara
    FinPara
    
    
    Para i = 1 Hasta N  Con Paso 1 Hacer
        suma_diagonal = suma_diagonal + Matriz[i, i];
    FinPara
    
    Escribir "";
    Escribir "--- RESULTADOS ---";
    
    
    Escribir "Matriz Ingresada:";
    Para i = 1 Hasta N  Con Paso 1 Hacer
        Para j = 1  Hasta N  Con Paso 1 Hacer
            Escribir Sin Saltar Matriz[i, j], " ";
        FinPara
        Escribir ""; 
    FinPara
    
    Escribir "La suma de los valores de la diagonal principal es: ", suma_diagonal;
    
FinAlgoritmo