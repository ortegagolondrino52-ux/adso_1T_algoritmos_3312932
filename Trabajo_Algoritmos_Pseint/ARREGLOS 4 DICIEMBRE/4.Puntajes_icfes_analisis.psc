Algoritmo Puntajes_icfes_analisis
    
    Definir MAX_ESTUDIANTES Como Entero;
    Definir Nombres Como Caracter;
    Definir Puntajes Como Entero;
    Definir i, indice_max, indice_min Como Entero;
    Definir suma_puntajes, promedio Como Real;
    
    MAX_ESTUDIANTES = 10;
    Dimension Nombres[MAX_ESTUDIANTES];
    Dimension Puntajes[MAX_ESTUDIANTES];
    
    Escribir "/&/ EJERCICIO 4: Puntajes icfes analisis /&/";
    
   
    Para i = 1  Hasta MAX_ESTUDIANTES Con Paso 1 Hacer
        Escribir "Ingrese nombre del estudiante ", i+1, ":";
        Leer Nombres[i];
        
        Repetir
            Escribir "Ingrese puntaje ICFES para ", Nombres[i], " (1-400):";
            Leer Puntajes[i];
            Si (Puntajes[i] < 1) O (Puntajes[i] > 400) Entonces
                Escribir "Error: El puntaje debe estar entre 1 y 400.";
            FinSi
        Hasta Que (Puntajes[i] >= 1) Y (Puntajes[i] <= 400); 
    FinPara
    
   
    indice_max = 1;
    indice_min = 1;
    suma_puntajes = 0.0;
    
    Para i = 1 Hasta MAX_ESTUDIANTES Con Paso 1 Hacer
        
        Si Puntajes[i] > Puntajes[indice_max] Entonces
            indice_max = i;
        FinSi
        
        
        Si Puntajes[i] < Puntajes[indice_min] Entonces
            indice_min = i;
        FinSi
        
        
        suma_puntajes = suma_puntajes + Puntajes[i];
    FinPara
    
    
    promedio = suma_puntajes / MAX_ESTUDIANTES;
    
    Escribir "";
    Escribir "/&/ RESULTADOS DEL ANÁLISIS ---";
    
    Escribir "MAYOR PUNTAJE: ", Nombres[indice_max], " con ", Puntajes[indice_max], " puntos.";
    Escribir "MENOR PUNTAJE: ", Nombres[indice_min], " con ", Puntajes[indice_min], " puntos.";
    
  
    Escribir "PROMEDIO general de puntajes: ", promedio;
    
FinAlgoritmo