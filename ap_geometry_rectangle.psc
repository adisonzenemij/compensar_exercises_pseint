// Figura Geometrica: Rectangulo
Algoritmo Geometry_Rectangle
	// Definir Variables
	Definir base, altura Como Real
	// Capturar Datos
    Escribir "Digita la longitud de la base del rect�ngulo"
    Leer base
    Escribir "Digita la longitud de la altura del rect�ngulo"
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
    Escribir "El �rea del rect�ngulo es:", area
    Escribir "El per�metro del rect�ngulo es:", perimetro
FinFuncion