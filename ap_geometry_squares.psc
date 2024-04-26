// Figura Geometrica: Cuadrado
Algoritmo Geometry_Square
	// Definir Variables
	Definir side Como Real
	// Capturar Datos
	Escribir "Digita el valor del lado del cuadrado"
	Leer side
	// Ejecutar Proceso
	execCalculate(side)
FinAlgoritmo

Funcion execCalculate(side)
	// Definir Variables
	Definir area, perimetro Como Real
	// Procesar Datos
	area = side * side
	perimeter = side * 4
	// Imprimir Resultados
	Escribir "El área del cuadrado es:", area
	Escribir "El perímetro del cuadrado es:", perimeter
FinFuncion