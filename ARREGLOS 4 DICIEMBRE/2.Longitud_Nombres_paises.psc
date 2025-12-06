Algoritmo Longitud_Nombres_paises
    
    Definir MAX_Posiciones Como Entero;
    Definir Paises Como Caracter;
    Definir Longitudes Como Entero;
    Definir i Como Entero;
    
    MAX_Posiciones = 5;
    Dimension Paises[MAX_Posiciones];
    Dimension Longitudes[MAX_Posiciones];
    
    Escribir "--- EJERCICIO 2: LONGITUD DE NOMBRES DE PAÍSES ---";
    
    
    Para i = 1 Hasta MAX_Posiciones Con Paso 1 Hacer
        Escribir "Ingrese el nombre del País ", i+1, ":";
        Leer Paises[i];
    FinPara
    
   
    Para i = 1  Hasta MAX_Posiciones Con Paso 1 Hacer
        
        Longitudes[i] = Longitud(Paises[i]);
    FinPara
    
    Escribir "";
    Escribir "/&/ RESULTADOS /&/";
    Escribir "Pos /// País         /// Longitud";
    Escribir "---------------------------------";
    
    
    Para i = 1  Hasta MAX_Posiciones Con Paso 1 Hacer
        Escribir i, "   /// ", Paises[i], " /// ", Longitudes[i];
    FinPara
    
FinAlgoritmo