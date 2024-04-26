// Figura Geometrica: Trapecio
Algoritmo Geometry_Trapezoid
	// Definir Variables
	Definir bMajor, bMinor Como Real
	Definir side, height Como Real
	// Capturar Datos
    Escribir "Digita la longitud de la base mayor del trapecio"
    Leer bMajor
    Escribir "Digita la longitud de la base menor del trapecio"
    Leer bMinor
	// Capturar Datos
    Escribir "Digita el valor del lado del trapecio"
    Leer side
    Escribir "Digita el valor de la altura del trapecio"
    Leer height
	// Ejecutar Proceso
	execCalculate(bMajor, bMinor, side, height)
FinAlgoritmo

Funcion execCalculate(bMajor, bMinor, side, height)
	// Definir Variables
	Definir area, perimetro Como Real
	// Procesar Datos
    area = ((bMajor * bMinor) * height) / 2
    perimeter = bMajor + bMinor + (2 * side)
	// Imprimir Resultados
	Escribir "El área del trapecio es:", area
    Escribir "El perímetro del trapecio es:", perimeter
FinFuncion