Algoritmo sin_titulo
	Definir register Como Entero
	register = 1
	Dimension eNames(register)
	Dimension eSurNs(register)
	Dimension eAgeNo(register)
	dataCapture(register, eNames, eSurNs, eAgeNo)
	dataPrint(register, eNames, eSurNs, eAgeNo)
FinAlgoritmo

SubProceso dataCapture(index, eNames, eSurNs, eAgeNo)
	// Imprimir Mensajes
	Escribir repeat("*", 40)
	Escribir "| ", repeat(" ", 8), "Capturar Informacion", repeat(" ", 8), " | "
	Escribir repeat("*", 40)
    // Recorrer Datos
	Para item = 1 Hasta index Con Paso 1 Hacer
		eNames[item] <- loadTextC("Nombres")
		eSurNs[item] <- loadTextC("Apellidos")
		eAgeNo[item] <- loadTextR("Edad")
	FinPara
FinSubProceso

SubProceso dataPrint(index, eNames, eSurNs, eAgeNo)
	// Imprimir Mensajes
	Escribir repeat("*", 40)
	Escribir "| ", repeat(" ", 8), "Informacion Empleado", repeat(" ", 8), " | "
	Escribir repeat("*", 40)
    // Recorrer Datos
	Para item = 1 Hasta index Con Paso 1 Hacer
		// Asignar Valores
		tNames = eNames[item]
		tSurNs = eSurNs[item]
		tAgeNo= eAgeNo[item]
		// Ajustar Espacios
		sNames = space(21 - lenghtC(tNames))
		sSurNs = space(21 - lenghtC(tSurNs))
		sAgeNo = space(21 - lenghtR(tAgeNo))
		// Imprimir Mensajes
		Escribir "| ", "Nombres  ", repeat(" ", 4), " | ", sNames, tNames, " |"
		Escribir "| ", "Apellidos", repeat(" ", 4), " | ", sSurNs, tSurNs, " |"
		Escribir "| ", "Edad     ", repeat(" ", 4), " | ", sAgeNo, tAgeNo, " |"
	FinPara
	// Imprimir Mensajes
	Escribir repeat("*", 40)
FinSubProceso









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