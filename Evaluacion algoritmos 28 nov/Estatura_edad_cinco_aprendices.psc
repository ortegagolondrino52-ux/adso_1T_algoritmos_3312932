Algoritmo Edad_Estatura_cinco_aprendices 
   
    Definir NUM_APRENDICES Como Entero;
    Definir opcion Como Entero;
    Definir i, indice_min Como Entero;
    Definir min_estatura, suma_estaturas, promedio Como Real;
    Definir Nombres Como Caracter;
    Definir Estaturas Como Real;
	
    
    NUM_APRENDICES <- 5;
    
   
    Dimension Nombres[NUM_APRENDICES];
    Dimension Estaturas[NUM_APRENDICES];
    
    
    Nombres[0] <- "Monik Galindo";
    Nombres[1] <- "Pedro Picapiedra";
    Nombres[2] <- "Rosa Dorado";
    Nombres[3] <- "Gustavo Salas";
    Nombres[4] <- "Blanca Rojas";
	
    
    Para i <- 0 Hasta NUM_APRENDICES - 1 Con Paso 1 Hacer
        Estaturas[i] <- 0.0;
    FinPara
    
    
    Repetir
        
       
        Escribir "**********************";
        Escribir "* MENU APRENDICES  *";
        Escribir "**********************";
        Escribir "1. Leer nombre de los aprendices";
        Escribir "2. Leer estatura de los aprendices";
        Escribir "3. Mostrar el nombre y la estatura del aprendiz de menor estatura";
        Escribir "4. Mostrar en pantalla el nombre de cada aprendiz con su estatura";
        Escribir "5. Mostrar el promedio de estatura de los cinco aprendices";
        Escribir "6. Salir";
        Escribir "Ingrese su opción (1-6):";
        
       
        Leer opcion;
        Escribir "";
        
        Segun opcion Hacer
            
            1:
                Escribir "--- LECTURA DE NOMBRES ---";
                Para i <- 0 Hasta NUM_APRENDICES - 1 Con Paso 1 Hacer
                    Escribir "Ingrese el nombre del aprendiz ", i+1, ":";
                    Leer Nombres[i];
                FinPara
                Escribir "Lectura de nombres finalizada.";
				
            2:
                Escribir "--- LECTURA DE ESTATURAS ---";
                Para i <- 0 Hasta NUM_APRENDICES - 1 Con Paso 1 Hacer
                    
					
                    Escribir "Ingrese la estatura de ", Nombres[i], " (Ej: 1.75):";
                    Leer Estaturas[i];
                FinPara
                Escribir "Lectura de estaturas finalizada.";
				
            3:
                Escribir "--- APRENDIZ DE MENOR ESTATURA ---";
                min_estatura <- Estaturas[0];
                indice_min <- 0;
                
                
                Para i <- 1 Hasta NUM_APRENDICES - 1 Con Paso 1 Hacer
                    Si Estaturas[i] < min_estatura Entonces
                        min_estatura <- Estaturas[i];
                        indice_min <- i;
                    FinSi
                FinPara
                
                Escribir "El aprendiz con la menor estatura es: ", Nombres[indice_min];
                Escribir "Su estatura es: ", min_estatura, " metros.";
				
				
            4:
                Escribir "--- LISTA DE APRENDICES Y ESTATURAS ---";
                Escribir "Nombre                 | Estatura (m)";
                Escribir "---------------------------------------";
                Para i <- 0 Hasta NUM_APRENDICES - 1 Con Paso 1 Hacer
                    Escribir Nombres[i], " | ", Estaturas[i];
                FinPara
            5:
                Escribir "--- PROMEDIO DE ESTATURA ---";
                suma_estaturas <- 0.0;
                
                
                Para i <- 0 Hasta NUM_APRENDICES - 1 Con Paso 1 Hacer
                    suma_estaturas <- suma_estaturas + Estaturas[i];
                FinPara
                
               
                promedio <- suma_estaturas / NUM_APRENDICES;
                
                Escribir "La suma total de las estaturas es: ", suma_estaturas, " metros.";
                Escribir "El promedio de estatura de los ", NUM_APRENDICES, " aprendices es: ", promedio, " metros.";
				
				
            6:
                Escribir "Saliendo del programa. ¡Hasta pronto!";
				
				
            De Otro Modo:
                Escribir "Opción no válida. Por favor, ingrese un número del 1 al 6.";
			
        FinSegun
        Escribir ""; 
        
		
    Hasta Que opcion = 6;
    
FinAlgoritmo