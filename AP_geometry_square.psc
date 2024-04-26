// Figura Geometrica: Cuadrado
Algoritmo Geometry_Square
	Definir lado Como Real
	Escribir "Digita el valor del lado del cuadrado"
	Leer lado
	execCalculate(lado)
FinAlgoritmo

Funcion execCalculate(lado)
	Definir area, perimetro Como Real
	area = lado * lado
	perimetro = lado * 4
	Escribir "El área del cuadrado es:", area
	Escribir "El perímetro del cuadrado es:", perimetro
FinFuncion