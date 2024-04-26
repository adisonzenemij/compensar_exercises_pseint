// Figura Geometrica: Cuadrado
Algoritmo Geometry_Square
	// Definir Variables
	Definir lado Como Real
	// Capturar Datos
	Escribir "Digita el valor del lado del cuadrado"
	Leer lado
	// Ejecutar Proceso
	execCalculate(lado)
FinAlgoritmo

Funcion execCalculate(lado)
	// Definir Variables
	Definir area, perimetro Como Real
	// Procesar Datos
	area = lado * lado
	perimetro = lado * 4
	// Imprimir Resultados
	Escribir "El área del cuadrado es:", area
	Escribir "El perímetro del cuadrado es:", perimetro
FinFuncion