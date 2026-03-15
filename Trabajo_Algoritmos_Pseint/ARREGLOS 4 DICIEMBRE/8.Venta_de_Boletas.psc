Algoritmo Venta_de_Boletas
	Definir Cedulas Como Entero
	Definir TotalBoletas, BoletasAComprar, Opcion Como Entero
	Definir i, CantidadCedulas, Cedula Como Entero
	Definir existe Como Logico
	Dimension Cedulas[100]  
	
	TotalBoletas = 20 
	CantCedulas = 0
	
	Repetir
		Escribir "/&/  MENU VENTA DE BOLETAS /&/"
		Escribir "1. Comprar Boletas"
		Escribir "2. Mostrar boletas disponibles"
		Escribir "3. Salir"
		Escribir "Seleccione una opcion: "
		Leer Opcion
		
		Segun Opcion Hacer
			1:
				Si TotalBoletas = 0 Entonces
					Escribir "No hay boletas . Venta finalizada."
				SiNo
					
					Existe = Falso
					
					Escribir "Ingrese numero de cedula: "
					Leer Cedula
					
					Para i = 1  Hasta CantidadCedulas Hacer
						Si i =Cedula Entonces
							Existe = Verdadero
						FinSi
					FinPara
					
					Si Existe = Verdadero Entonces
						Escribir " Venta rechazada: la cedula ya compro boletas."
					SiNo
						Escribir "Cuantas boletas desea comprar? (Maximo 4)"
						Leer BoletasAComprar
						
						Si BoletasAComprar > 4 Entonces
							Escribir "El maximo permitido es de  4 boletas."
						SiNo
							Si BoletasAComprar <= TotalBoletas Entonces
								CantidadCedulas = Cedula
								CantCedulas = CantCedulas + 1
								TotalBoletas = TotalBoletas - BoletasAComprar
								
								Escribir "Compra exitosa"
								Escribir "Boletas restantes: ", TotalBoletas
							SiNo
								Escribir "No hay suficientes boletas disponibles."
							FinSi
						FinSi
					FinSi
				FinSi
				
			2:
				Escribir "Boletas disponibles: ", TotaldeBoletas
				
			3:
				Escribir "Saliste del sistema de compra de boletas ."
				
			De Otro Modo:
				Escribir "Opcion no valida"
		FinSegun
		
	Hasta Que Opcion = 3 O TotalBoletas = 0
	
FinAlgoritmo