Algoritmo Dos_arreglos_suma_
    Definir MAX_Posiciones Como Entero;
    Definir ArregloA, ArregloB, ArregloSuma Como Entero;
    Definir i Como Entero;
    
    MAX_POSICIONES = 5;
    Dimension ArregloA[MAX_Posiciones];
    Dimension ArregloB[MAX_Posiciones];
    Dimension ArregloSuma[MAX_Posiciones];
    
    Escribir "°°°° Ejercicio 1 :  SUMA ARREGLOS °°°°";
    
    Escribir "--- INGRESO DE DATOS PARA EL ARREGLO A:";
    Para i = 1 Hasta MAX_POSICIONES Con Paso 1 Hacer
        Escribir "Ingrese número entero para la posición ", i, " del Arreglo A:";
        Leer ArregloA[i];
    FinPara
    
    Escribir "--- INGRESO DE DATOS PARA EL ARREGLO B:";
	Para i = 1 Hasta MAX_POSICIONES Con Paso 1 Hacer
        Escribir "Ingrese número entero para la posición ", i, " del Arreglo B:";
        Leer ArregloB[i];
    FinPara
    
    
    Para i <- 1 Hasta MAX_Posiciones Con Paso 1 Hacer
        ArregloSuma[i] <- ArregloA[i] + ArregloB[i];
    FinPara
    
    Escribir "";
    Escribir "/&/ RESULTADOS /&/";
    Escribir "Pos /// Arreglo A /// Arreglo B /// Arreglo Suma";
    Escribir "--------------------------------------------";
    
    Para i = 1 Hasta MAX_Posiciones Con Paso 1 Hacer
        Escribir i, "  ///   ", ArregloA[i], "    ///   ", ArregloB[i], "     ///  ", ArregloSuma[i];
    FinPara
    
FinAlgoritmo