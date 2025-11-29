Algoritmo Valores_de_q_para_valores_de_x

    Definir x, q Como Entero;
    
    x = 1;
    
    Escribir "Tabla de valores para y = 3x^2 - 2x + 5";
    Escribir "---------------------------------------";
    
    Mientras x <= 10 Hacer
       
        q = (3 * x * x) - (2 * x) + 5;
        
        Escribir "Para x = ", x, ", el valor de q es: ", q;
        x = x + 1;
        
    FinMientras
    
FinAlgoritmo