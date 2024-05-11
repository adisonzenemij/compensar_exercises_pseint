// Ejercicio Numeros Pares
Algoritmo Number_Pars
	// Definir Variables
    Definir numData, numCount, square Como Entero
	
	// Asignar Valores
	idxTotal = 0
	idxMore = 1
	numCount = 50
	Dimension data[numCount, 3]
	
    // Ejecutar Proceso
    Para numData = 0 Hasta numCount Con Paso 2 Hacer
        // Calcular el cuadrado del número
        square = numData * numData
		data[idxMore, 1] = idxMore
		data[idxMore, 2] = numData
		data[idxMore, 3] = square
		// Incrementar indices
		idxMore = idxMore + 1
    FinPara
	
	// Asignar Valores
	idxTotal = idxMore - 1
	
	// Visualizar Datos
	printResult(idxTotal, data)
FinAlgoritmo

// Imprimir Resultados
Funcion printResult(index, data)
	// Organizar Datos
	Escribir repeat("-", 25)
	Escribir "| Numero Par | Cuadrado |"
	Escribir repeat("-", 25)
	Para item = 1 Hasta index Con Paso 1 Hacer
		// Asignar Valores
		tPair = data[item, 2]
		tSquare = data[item, 3]
		// Calcular Espacios
		sPair = space(11 - lenght(tPair))
		sSquare = space(9 - lenght(tSquare))
		// Imprimir Resultados
		Escribir "| ", sPair, tPair, " | ", sSquare, tSquare, " |"
    FinPara
	Escribir repeat("-", 25)
	webPage
FinFuncion

// Contar Caracteres
Funcion info <- lenght(value)
    Definir text Como Cadena
    text = ConvertirATexto(value)
    info = Longitud(text)
FinFuncion

// Generar Espacios
Funcion info <- space(count)
    Definir result Como Cadena
    final = count - 1
    result = ""
    Para i=1 Hasta final Con Paso 1 Hacer
		result = result + " "
	Fin Para
    info = result
FinFuncion

// Repetir Valores
Funcion info <- repeat(character, count)
    Definir result Como Cadena
    result = ""
    Para i = 1 Hasta count Con Paso 1 Hacer
        result = result + character
    FinPara
    info = result
FinFuncion

// Mensaje Personalizadp
Funcion webPage
	Escribir "* www.adisonjimenez.net *"
	Escribir "*    www.engsoft.app    *"
	Escribir repeat("-", 25)
FinFuncion
