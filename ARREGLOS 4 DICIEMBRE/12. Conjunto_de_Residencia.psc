Algoritmo Conjunto_Residencia
    Definir torre, piso, apto, opcion Como Entero
    Definir totalTorre, totalGeneral Como Entero
    Dimension habitantes[16,5]
    Definir habitantes Como Entero
	
    Para torre <- 1 Hasta 3
        Para piso <- 1 Hasta 5
            Para apto <- 1 Hasta 4
                habitantes[(torre-1)*5 + piso, apto] <- 0
            FinPara
        FinPara
    FinPara
	
    Repetir
        Escribir ""
        Escribir "===== MENÚ CONJUNTO RESIDENCIAL ====="
        Escribir "1. Ingresar número de habitantes por apartamento"
        Escribir "2. Mostrar todos los datos"
        Escribir "3. Consultar habitantes de un apartamento"
        Escribir "4. Total de habitantes por torre"
        Escribir "5. Salir"
        Escribir "Seleccione opción (1-5):"
        Leer opcion
		
        Segun opcion Hacer
            1:
                Para torre <- 1 Hasta 3
                    Para piso <- 1 Hasta 5
                        Para apto <- 1 Hasta 4
                            Escribir "Ingrese número de habitantes - Torre ", torre, ", Piso ", piso, ", Apartamento ", apto, ":"
                            Leer habitantes[(torre-1)*5 + piso, apto]
                        FinPara
                    FinPara
                FinPara
				
            2:
                Para torre <- 1 Hasta 3
                    Escribir "Torre ", torre, ":"
                    Para piso <- 1 Hasta 5
                        Para apto <- 1 Hasta 4
                            Escribir " Piso ", piso, " - Apartamento ", apto, ": ", habitantes[(torre-1)*5 + piso, apto], " habitantes"
                        FinPara
                    FinPara
                FinPara
				
            3:
                Escribir "Ingrese torre (1-3):"
                Leer torre
                Escribir "Ingrese piso (1-5):"
                Leer piso
                Escribir "Ingrese apartamento (1-4):"
                Leer apto
                Escribir "Torre ", torre, ", Piso ", piso, ", Apartamento ", apto, " tiene ", habitantes[(torre-1)*5 + piso, apto], " habitantes."
				
            4:
                Para torre <- 1 Hasta 3
                    totalTorre <- 0
                    Para piso <- 1 Hasta 5
                        Para apto <- 1 Hasta 4
                            totalTorre <- totalTorre + habitantes[(torre-1)*5 + piso, apto]
                        FinPara
                    FinPara
                    Escribir "Total habitantes en Torre ", torre, ": ", totalTorre
                FinPara
				
            5:
                Escribir "Saliendo..."
            DeOtroModo:
                Escribir "Opción inválida"
        FinSegun
    Hasta Que opcion = 5
	
FinAlgoritmo


