// Figura Geometrica: Rectangulo
Algoritmo Geometry_Rectangle
	// Definir Variables
	Definir base, altura Como Real
	// Capturar Datos
    Escribir "Digita la longitud de la base del rectángulo"
    Leer base
    Escribir "Digita la longitud de la altura del rectángulo"
    Leer altura
    // Ejecutar Proceso
    execCalculate(base, altura)
FinAlgoritmo

Funcion execCalculate(base, altura)
	// Definir Variables
    Definir area, perimetro Como Real
	// Procesar Datos
	area = base * altura
    perimetro = 2 * (base + altura)
    // Imprimir Resultados
    Escribir "El área del rectángulo es:", area
    Escribir "El perímetro del rectángulo es:", perimetro
FinFuncion