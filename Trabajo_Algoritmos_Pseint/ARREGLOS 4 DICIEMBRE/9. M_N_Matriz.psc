Algoritmo matriz_M_N
		Escribir "Ingrese número de filas (M):"
		Leer M
		
		Escribir "Ingrese número de columnas (N):"
		Leer N
		
		Dimension A[M,N]
		Dimension B[M,N]
		
		
		Escribir "Ingrese los valores de la matriz:"
		Para i = 1 Hasta M Con Paso 1
			Para j = 1 Hasta N Con Paso 1
				Escribir "Elemento [", i, ",", j, "]:"
				Leer A[i,j]
			FinPara
		FinPara
		
		
		Para i = 1 Hasta M Con Paso 1
			Para j = 1 Hasta N Con Paso 1
				Si A[i,j] % 2 = 0 Entonces
					B[i,j] = "P"
				SiNo
					B[i,j] = "I"
				FinSi
			FinPara
		FinPara
		
		
		Escribir "------------------------------------"
		Escribir "Matriz"

	
FinAlgoritmo
