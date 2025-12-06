Algoritmo Gastos_de_semana
    
    Definir DIAS_SEMANA Como Entero;
    Definir GastosDia Como Real; 
    Definir i Como Entero;
    Definir suma_gastos, promedio_gastos Como Real;
    
    DIAS_SEMANA = 7;
	
    Dimension GastosDia[DIAS_SEMANA];
    suma_gastos = 0.0;
    
    Escribir "/&/ EJERCICIO 6: PROMEDIO DE GASTOS SEMANAL /&/";
    
    
    Para i = 1 Hasta DIAS_SEMANA  Con Paso 1 Hacer
        Escribir "Ingrese el gasto del día ", i, " de la semana:";
        Leer GastosDia[i];
        suma_gastos = suma_gastos + GastosDia[i]; 
    FinPara
    
    
    promedio_gastos = suma_gastos / DIAS_SEMANA;
    
    Escribir "";
    Escribir "/&/ RESULTADOS /&/";
    Escribir "Gasto total de la semana: ", suma_gastos;
    Escribir "El promedio de gastos semanal es: ", promedio_gastos;
    
FinAlgoritmo