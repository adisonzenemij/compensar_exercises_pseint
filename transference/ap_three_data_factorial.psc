Algoritmo DataFactorial
	// Definir Variables
	Definir number Como Entero
	// Imprimir Mensajes
	messageMain
	// Capturar Datos
    Escribir "Diga el valor factorial:"
    Leer number
	// Procesar Informacion
	result = proccessFactorial(number)
	// Imprimir Mensajes
    messageFinal(number, result)
FinAlgoritmo

// Subproceso para calcular el factorial de un número
SubProceso info <- proccessFactorial(number)
	// Definir Variables
    Definir item, factorial Como Entero
	// Asignar Valores
    factorial = 1
	// Imprimir Mensaje
	messageResult
    // Bucle Calcular Factorial
    Para item <- 1 Hasta number Con Paso 1 Hacer
		// Procesar Informacion
		factorial = calculateFactorial(item, factorial)
    FinPara
	// Retornar Valor Final
	info = factorial
FinSubProceso

SubProceso info <- calculateFactorial(item, value)
	// Ejecutar Operacion
	proccess = value * item
	// Imprimir Mensajes
	messageProccess(item, value, proccess)
	// Retornar Valor Final
	info = proccess
FinSubProceso

// Organizar Mensajes
Funcion messageMain
	// Imprimir Mensajes
	Escribir repeat("*", 40)
	Escribir "| ", repeat(" ", 9), "Algoritmo Factorial", repeat(" ", 9), "|"
	Escribir repeat("*", 40)
FinFuncion

// Organizar Mensajes
Funcion messageResult
	// Asignar Valores
	mFm = "Factorial"
	mCl = "Calculo"
	mRs = "Resultado"
	rpo = repeat(" ", 1)
	rpt = repeat(" ", 2)
	// Imprimir Mensajes
	Escribir repeat("*", 40)
	Escribir "|", rpt, mFm, rpo, " | ", rpt, mCl, rpo, " | ", mRs, " |"
	Escribir repeat("*", 40)
FinFuncion

// Organizar Mensajes
Funcion messageProccess(item, value, result)
	// Ajustar Espacios
	sValue = space(11 - lenghtR(value))
	sItem = space(11 - lenghtR(item))
	sResult = space(11 - lenghtR(result))
	// Imprimir Mensajes
	Escribir "| ", sItem, item, "  * ", sValue, value, " |", sResult, result, " |"
FinFuncion

// Organizar Mensajes
Funcion messageFinal(number, result)
	// Ajustar Espacios
	sNumber = space(20 - lenghtR(number))
	sResult = space(20 - lenghtR(result))
	// Imprimir Mensajes
	Escribir repeat("*", 40)
    Escribir "| Valor Factorial |", sNumber, number, " |"
	Escribir "| Resultado Final |", sResult, result, " |"
	Escribir repeat("*", 40)
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