Algoritmo DataSummation
	// Definir Variables
	Definir number Como Entero
	// Imprimir Mensajes
	messageMain
	// Capturar Datos
    Escribir "Diga el valor de la sumatoria:"
    Leer number
	// Procesar Informacion
    final = sumatoriaSerie(number)
	// Imprimir Mensajes
    messageFinal(number, final)
FinAlgoritmo

// Calcular Sumatoria Numeros
SubProceso info <- sumatoriaSerie(number)
	// Definir Variables
    Definir item, termino Como Entero
	// Asignar Valores
    summation = 0
	// Imprimir Mensaje
	messageResult
    // Bucle Calcular Sumatoria
    Para item <- 1 Hasta number Con Paso 1 Hacer
		// Ejecutar Serie Establecida
		valTerm = calculateSumm(item)
        summation <- summation + valTerm
    FinPara
	// Retornar Valor Final
	info = summation
FinSubProceso

// Calcular Sumatorias
SubProceso info <- calculateSumm(value)
	// Asignar Valores
	proccess = 0
	// Ejecutar Operacion
	proccess = (value * (value + 1)) ^ 2
	// Imprimir Mensajes
	messageSumm(value, proccess)
	// Retornarl Valor Final
	info = proccess
FinSubProceso

// Organizar Mensajes
Funcion messageResult
	// Asignar Valores
	mFm = "Formulas"
	mRs = "Resultado"
	rFv = repeat(" ", 8)
	// Imprimir Mensajes
	Escribir repeat("*", 38)
	Escribir "|", rFv, mFm, rFv, "| ", mRs, " |"
	Escribir repeat("*", 38)
FinFuncion

// Organizar Mensajes
Funcion messageSumm(value, result)
	// Ajustar Espacios
	sValue = space(7 - lenghtR(value))
	sResult = space(11 - lenghtR(result))
	// Imprimir Mensajes
	Escribir "| (", sValue, value, "*(", sValue, value, "+1))^2  |", sResult, result, " |"
FinFuncion

// Organizar Mensajes
Funcion messageMain
	// Imprimir Mensajes
	Escribir repeat("*", 38)
	Escribir "| ", repeat(" ", 7), "Algoritmo Sumatorias", repeat(" ", 7), " | "
	Escribir repeat("*", 38)
	Escribir "| ", repeat(" ", 8), "Serie (i*(i+1))^2", repeat(" ", 9), " | "
	Escribir repeat("*", 38)
FinFuncion

// Organizar Mensajes
Funcion messageFinal(number, final)
	// Ajustar Espacios
	sNumber = space(16 - lenghtR(number))
	sFinal = space(15 - lenghtR(final))
	// Imprimir Mensajes
	Escribir repeat("*", 38)
    Escribir "| Valor Sumatoria   |", sNumber, number, " |"
	Escribir "| Sumatoria Final   | ", sFinal, final, " |"
	Escribir repeat("*", 38)
FinFuncion










// Capturar Valores de Dato Real
Funcion info <- loadTextR(message)
	Definir read Como Real
	Escribir message, " del Empleado"
	Leer read
	info = read
FinFuncion

// Capturar Valores de Dato Cadena
Funcion info <- loadTextC(message)
	Definir read Como Cadena
	Escribir message, " del Empleado"
	Leer read
	info = read
FinFuncion

// Redondear Valor Real
Funcion info <- roundReal(value)
	Definir endInt, endDecimal Como Real
	endInt <- trunc(value)
	info = endInt
FinFuncion

// Contar Caracteres
Funcion info <- lenghtR(value)
    Definir text Como Cadena
    text = ConvertirATexto(value)
    info = Longitud(text)
FinFuncion

// Contar Caracteres
Funcion info <- lenghtC(value)
    info = Longitud(value)
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