Algoritmo temperaturas_semana
		
		// Nombres de los días
		Dimension Dias[7]
		Dias[1] = "lunes"
		Dias[2] = "martes"
		Dias[3] = "miércoles"
		Dias[4] = "jueves"
		Dias[5] = "viernes"
		Dias[6] = "sábado"
		Dias[7] = "domingo"
		Dimension Temp[7,2]
	
		Escribir "Ingrese la temperatura mínima y máxima de cada día:"
		Para i = 1 Hasta 7 Con Paso 1
			Escribir "Día ", Dias[i]
			Escribir "Temperatura mínima:"
			Leer Temp[i,1]
			
			Escribir "Temperatura máxima:"
			Leer Temp[i,2]
		FinPara
		
		max_temp = Temp[1,2]
		dia_max = 1
		
		Para i = 2 Hasta 7 Con Paso 1
			Si Temp[i,2] > max_temp Entonces
				max_temp = Temp[i,2]
				dia_max = i
			FinSi
		FinPara
		
		Escribir "------------------------------------------------"
		Escribir "El día ", Dias[dia_max], " la temperatura máxima fue de ", max_temp, " grados."
		Escribir "------------------------------------------------"
		
		Escribir "Ingrese el número del día que desea consultar (1=lunes, 7=domingo):"
		Leer d
		
		Si d >= 1 Y d <= 7 Entonces
			Escribir "Para el día ", Dias[d], ":"
			Escribir "Temperatura mínima: ", Temp[d,1]
			Escribir "Temperatura máxima: ", Temp[d,2]
		SiNo
			Escribir "Número de día inválido."
	FinSi
	
FinAlgoritmo
