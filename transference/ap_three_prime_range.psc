Algoritmo DataPrimeRange
	// Definir Variables
    Definir valueX, valueY Como Entero
	// Imprimir Mensajes
	messageMain
	// Capturar Datos
    Escribir "Digita el valor de X:"
    Leer valueX
    Escribir "Digita el valor de Y:"
    Leer valueY
	// Procesar Informacicon
    countNroPrimes(valueX, valueY)
FinAlgoritmo

// Procesar Datos
SubProceso countNroPrimes(valueX, valueY)
	// Definir Variables
    Definir valNumber, counter Como Entero
    Definir isPrime Como Logico
	// Procesar Validacion
	valRange = validateRange(valueX, valueY)
	// Verificar Validacion
	Si !valRange Entonces
		// Imprimir Mensajes
		messageValues(valueX, valueY)
		// Asignar Valores
		counter <- 0
		// Recorrer Datos
		Para valNumber <- valueX Hasta valueY Con Paso 1 Hacer
			// Ejecutar Proceso
			isPrime = validateNroPrime(valNumber, isPrime)
			// Verificar Validacion
			Si isPrime Entonces
				//Escribir valNumber
				messagePrime(valNumber)
				counter <- counter + 1
			FinSi
		FinPara
		// Imprimir Mensajes
		messageCount(counter)
	FinSi
FinSubProceso

// Verificar Numeros Primos
SubProceso info <- validateNroPrime(valNumber, isPrime)
	// Definir Variables
    Definir i Como Entero
	// Asignar Valores
    isPrime = Verdadero
	// Verificar Validacion
    Si valNumber <= 1 Entonces
        isPrime = Falso
    Sino
		// Recorrer Datos
        Para i <- 2 Hasta valNumber - 1 Con Paso 1 Hacer
            Si (valNumber % i) = 0 Entonces
                isPrime = Falso
            FinSi
        FinPara
    FinSi
	// Retornar Valor Final
	info = isPrime
FinSubProceso

// Verificar Valores Rangos
SubProceso info <- validateRange(valueX, valueY)
	// Definir Variables
	Definir validate Como Logico
	// Asignar Valores
	validate = Falso
	// Validar que x sea inferior a y
    Si valueX >= valueY Entonces
		// Imprimir Mensajes
		Escribir repeat("*", 38)
        Escribir "| Error |   X debe ser menor que Y.  |"
		Escribir repeat("*", 38)
		validate = Verdadero
	FinSi
	// Retornar Valor Final
	info = validate
FinSubProceso

// Organizar Mensajes
Funcion messageMain
	// Imprimir Mensajes
	Escribir repeat("*", 38)
	Escribir "| ", repeat(" ", 7), "Algoritmo Nro Primos", repeat(" ", 7), " |"
	Escribir repeat("*", 38)
FinFuncion

// Organizar Mensajes
Funcion messageValues(valueX, valueY)
	// Imprimir Mensajes
	Escribir repeat("*", 38)
	Escribir "| ", repeat(" ", 8), "Resultados Finales", repeat(" ", 8), " |"
	Escribir repeat("*", 38)
	// Ajustar Espacios
	sVX = space(9 - lenghtR(valueX))
	sVY = space(9 - lenghtR(valueY))
	// Imprimir Mensajes
	Escribir "| ", repeat(" ", 15) , "| Valor X | Valor Y |"
	Escribir "| Números Primos |", sVX, valueX, " |", sVY, valueY, " |"
	Escribir repeat("*", 38)
FinFuncion

// Organizar Mensajes
Funcion messagePrime(valPrime)
	// Ajustar Espacios
	sPrime = space(15 - lenghtR(valPrime))
	// Imprimir Mensajes
	Escribir "| ", sPrime, valPrime, repeat(" ", 20), " |"
FinFuncion

// Organizar Mensajes
Funcion messageCount(value)
	// Ajustar Espacios
	sCounter = space(9 - lenghtR(value))
	// Imprimir Mensajes
	Escribir repeat("*", 38)
	Escribir "| Cantidad de Nro Primos ", " | ", sCounter, value, " |"
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