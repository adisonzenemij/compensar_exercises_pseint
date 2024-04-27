// Figura Geometrica: Rombo
Algoritmo Geometry_Rhombus
	// Definir Variables
	Definir major, minor Como Real
    Definir side Como Real
	// Capturar Datos
    Escribir "Digita la longitud de la diagonal mayor del rombo"
    Leer major
    Escribir "Digita la longitud de la diagonal menor del rombo"
    Leer minor
    Escribir "Digita el valor de cualquiera de los lados del rombo"
    Leer side
    // Ejecutar Proceso
	execCalculate(major, minor, side)
FinAlgoritmo

Funcion execCalculate(major, minor, side)
	// Definir Variables
    Definir area, perimeter Como Real
	// Procesar Datos
    area = (major * minor) / 2
    perimeter = 4 * side
    // Imprimir Resultados
    Escribir "El �rea del rombo es:", area
    Escribir "El per�metro del rombo es:", perimeter
FinFuncion