Algoritmo Ubicar_Punto_x_Plano
    
    
    Definir x, q Como Real;
    
    Escribir "--- UBICACIÓN DE PUNTO EN EL PLANO CARTESIANO ---";
    Escribir "Ingrese la coordenada X del punto:";
    Leer x;
    Escribir "Ingrese la coordenada q del punto:";
    Leer q;
    
    Escribir "";
    Escribir "El punto ingresado es: (", x, ", ", q, ")";
    
    
    Si (x = 0) Y (q = 0) Entonces
        Escribir "El punto se encuentra en el ORIGEN de las coordenadas.";
	FinSi
	
		Si (x = 0) Y (q <> 0) Entonces
			Escribir "El punto se encuentra ubicado en el EJE DE COORDENADAS X.";
		FinSi
	Si (x > 0) Y (q > 0) Entonces
		Escribir "El punto se encuentra en el PRIMER CUADRANTE.";
	FinSi
	
			Si (x < 0) Y (q > 0) Entonces
			Escribir "El punto se encuentra en el SEGUNDO CUADRANTE.";
		FinSi
	si (x < 0) Y (q < 0) Entonces
		Escribir "El punto se encuentra en el TERCER CUADRANTE.";
	FinSi
	
			Si (x > 0) Y (q < 0) Entonces
				Escribir "El punto se encuentra en el CUARTO CUADRANTE.";
			FinSi
FinAlgoritmo


