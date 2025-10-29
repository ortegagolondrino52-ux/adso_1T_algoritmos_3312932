Algoritmo Leer_un_numero_entero_de_dos_digitos_Decimal_Unidad
	Definir numero , decena , unidad  Como Entero
	Escribir "ingrese un numero de dos digitos enteros(entre 10 y 99)"
	Leer numero 
	
	//calculo unidad
	unidad=numero MOD 10 
	
	//calculo decena 
	decena=Trunc(numero/10)
	
	Escribir "numero introducido es:" numero
	
	Escribir "El digito de la unidad es:" Unidad
	
	Escribir "El digito de la decena es:" decena
	
	
	
	
FinAlgoritmo
