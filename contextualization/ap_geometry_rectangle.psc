// Figura Geometrica: Rectangulo
Algoritmo Geometry_Rectangle
	// Definir Variables
	Definir base, height Como Real
	// Capturar Datos
    Escribir "Digita la longitud de la base del rectángulo"
    Leer base
    Escribir "Digita la longitud de la altura del rectángulo"
    Leer height
    // Ejecutar Proceso
    execCalculate(base, height)
FinAlgoritmo

Funcion execCalculate(base, height)
	// Definir Variables
    Definir area, perimeter Como Real
	// Procesar Datos
	area = base * height
    perimeter = 2 * (base + height)
    // Imprimir Resultados
    Escribir "El área del rectángulo es:", area
    Escribir "El perímetro del rectángulo es:", perimeter
FinFuncion