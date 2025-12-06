Algoritmo Asignacion_Citas_Medico
    Dimension citas[9,3]       
    Definir citas Como Caracter  
    Definir opcion, i, horaIndex Como Entero
    Definir cedula,entreda Como Caracter
    // Inicializar horas
    citas[1,1] <- "7:00am"
    citas[2,1] <- "8:00am"
    citas[3,1] <- "9:00am"
    citas[4,1] <- "10:00am"
    citas[5,1] <- "2:00pm"
    citas[6,1] <- "3:00pm"
    citas[7,1] <- "4:00pm"
    citas[8,1] <- "5:00pm"
	
    // Inicializar cédulas vacías
    Para i <- 1 Hasta 8
        citas[i,2] <- ""
    FinPara
    // Menú principal
    Repetir
        Escribir ""
        Escribir "**** MENÚ ASIGNACION CITAS ****"
        Escribir "1. Asignar una cita"
        Escribir "2. Mostrar todas las citas"
        Escribir "3. Consultar cita por número de cédula"
        Escribir "4. Consultar cita por hora"
        Escribir "5. Salir"
        Escribir "Seleccione una opción (1-5):"
        Leer opcion
		
        Segun opcion Hacer
            1:  
                Escribir ""
                Escribir "Horarios disponibles:"
                Para i <- 1 Hasta 8
                    Si citas[i,2] = "" Entonces
                        Escribir i, ". ", citas[i,1], " - Libre"
                    Sino
                        Escribir i, ". ", citas[i,1], " - Ocupado (Cédula: ", citas[i,2], ")"
                    FinSi
                FinPara
				
                Escribir ""
                Escribir "Ingrese el número de la hora que desea reservar (1-8):"
                Leer horaIndex
                Si horaIndex >= 1 Y horaIndex <= 8 Entonces
                    Si citas[horaIndex,2] = "" Entonces
                        Escribir "Ingrese la cédula del paciente:"
                        Leer cedula
                        
                        Definir tieneCita Como Entero
                        tieneCita <- 0
                        Para i <- 1 Hasta 8
                            Si citas[i,2] = cedula Entonces
                                tieneCita <- 1
                            FinSi
                        FinPara
                        Si tieneCita = 0 Entonces
                            citas[horaIndex,2] <- cedula
                            Escribir "Cita asignada correctamente a las ", citas[horaIndex,1], " para la cédula ", cedula
                        Sino
                            Escribir "ERROR: Esta cédula ya tiene una cita asignada."
                        FinSi
                    Sino
                        Escribir "La hora seleccionada ya está ocupada. Elija otra."
                    FinSi
                Sino
                    Escribir "Opción de hora inválida."
                FinSi
				
            2: 
                Escribir ""
                Escribir "Listado completo de citas:"
                Para i <- 1 Hasta 8
                    Si citas[i,2] = "" Entonces
                        Escribir citas[i,1], " - Libre"
                    Sino
                        Escribir citas[i,1], " - Ocupado (Cédula: ", citas[i,2], ")"
                    FinSi
                FinPara
				
            3: 
                Escribir "Ingrese la cédula a buscar:"
                Leer cedula
                Definir encontrado Como Entero
                encontrado <- 0
                Para i <- 1 Hasta 8
                    Si citas[i,2] = cedula Entonces
                        Escribir "Cédula ", cedula, " tiene cita a las ", citas[i,1]
                        encontrado <- 1
                    FinSi
                FinPara
                Si encontrado = 0 Entonces
                    Escribir "No se encontró ninguna cita para la cédula ", cedula
                FinSi
				
            4: 
                Escribir "Ingrese la hora a consultar (ej: 7:00am, 2:00pm):"
                Leer cedula  
                Definir hallada Como Entero
                hallada <- 0
                Para i <- 1 Hasta 8
                    Si citas[i,1] = cedula Entonces
                        Si citas[i,2] = "" Entonces
                            Escribir "La hora ", cedula, " está Libre"
                        Sino
                            Escribir "La hora ", cedula, " está Ocupada por la cédula ", citas[i,2]
                        FinSi
                        hallada <- 1
                    FinSi
                FinPara
                Si hallada = 0 Entonces
                    Escribir "Hora no válida o no existe en la agenda."
                FinSi
				
            5:
                Escribir "Saliendo del sistema de citas..."
            DeOtroModo:
                Escribir "Opción inválida. Intente nuevamente."
        FinSegun
		
    Hasta Que opcion = 5

FinAlgoritmo

	

