Algoritmo EncontrarMayor
    
    
    Definir N Como Entero;             
    Definir contador Como Entero;       
    Definir numero_actual Como Real;    
    Definir mayor_valor Como Real;      
    
    Escribir "--- ENCONTRAR EL MAYOR VALOR ---";
    Escribir "Ingrese la cantidad (N) de números que desea evaluar:";
    Leer N;
    
    
    Si N <= 0 Entonces
        Escribir "La cantidad de números debe ser mayor que cero.";
        
    Sino
        
        
        contador <- 1;
        
        
        Escribir "Ingrese el número 1 de ", N, ":";
        Leer numero_actual;
        mayor_valor <- numero_actual; 
        
        contador <- contador + 1; 
		
       
        Mientras contador <= N Hacer
            
            Escribir "Ingrese el número ", contador, " de ", N, ":";
            Leer numero_actual;
            
            
            Si numero_actual > mayor_valor Entonces
                mayor_valor <- numero_actual;
            FinSi
            
           
            contador <- contador + 1;
            
        FinMientras
        
        
        Escribir "----------------------------------------";
        Escribir "El MAYOR valor del conjunto de ", N, " números es: ", mayor_valor;
        
    FinSi
    
FinAlgoritmo