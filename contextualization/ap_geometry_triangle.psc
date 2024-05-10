// Figura Geometrica: Triangulo
Algoritmo Geometry_Triangle
	// Definir Variables
	Definir left, right, below Como Real
	// Capturar Datos
	Escribir "Digita los tres lados del triangulo"
	Leer left, right, below
	// Ejecutar Proceso
	execCalculate(left, right, below)
FinAlgoritmo

Funcion execCalculate(left, right, below)
	// Definir Variables
	Definir perimetro, semi, area Como Real
	// Procesar Datos
	perimetro = left + right + below
	semi = perimetro / 2
	//area = rc(semi * (semi - left) * (semi - right) * (semi - below))
	area = (semi * (semi- left) * (semi - right) * (semi - below)) ^ 0.5
	// Imprimir Resultados
	Escribir "El perímetro del triángulo es:", " ", perimetro
	Escribir "El área del triángulo es:", " ", area
FinFuncion