Algoritmo sin_titulo
	// Definir Variables
	Definir index, count Como Entero
	// Definir Variables
	Definir aNames, aSurNames Como Cadena
	Definir aDocument, aSueldo, aDias, aVentas, aHoras, aDedu Como Real
	Definir aNeto Como Real
	// Capturar Valores
	Escribir "¿Cuantos empleados desea liquidar?"
	Leer count
	Limpiar Pantalla
	// Definir Arreglos
	Dimension aDocument(count), aNames(count), aSurNames(count)
	Dimension aSueldo(count), aDias(count), aVentas(count)
	Dimension aHoras(count), aDedu(count), aNeto(count)
	// Procesar Informacion
	strgEmployee(count, aDocument, aNames, aSurNames, aSueldo, aDias, aVentas, aHoras, aDedu)
	calcularSalariosNetos(count, aSueldo, aDias, aVentas, aHoras, aDedu, aNeto)
	// Imprimir Mensajes
	strgLoadMssg
	// Procesar Informacion
	strgLoadData(count, aDocument, aNames, aSurNames, aSueldo, aDias, aVentas, aHoras, aDedu, aNeto)
	calcularPromedioSueldo(count, aSueldo)
	encontrarSalarioMinMax(count, aNeto)
FinAlgoritmo

// Capturar Informacion de Usuario
SubProceso strgEmployee(index, a1, a2, a3, a4, a5, a6, a7, a8)
	// Ejecutar Proceso
	Para item = 1 Hasta index Con Paso 1 Hacer
		a1[item] <- loadTextR("Documento")
		a2[item] <- loadTextC("Nombres")
		a3[item] <- loadTextC("Apellidos")
		a4[item] <- loadTextR("Sueldo Base")
		a5[item] <- loadTextR("Dias Laborados")
		a6[item] <- loadTextR("Comisiones por Ventas")
		a7[item] <- loadTextR("Horas Extras Laboradas")
		a8[item] <- loadTextR("Deducciones por Prestamos")
		Limpiar Pantalla
	FinPara
FinSubProceso

// Cargar Datos de Arreglos
SubProceso strgLoadData(index, a1, a2, a3, a4, a5, a6, a7, a8, a9)
	// Ejecutar Proceso
	Para item = 1 Hasta index Con Paso 1 Hacer
		t1 = roundReal(a1[item]) // Arreglo Documento
		t2 = a2[item]            // Arreglo Nombres
		t3 = a3[item]            // Arreglo Apellidos
		t4 = roundReal(a4[item]) // Arreglo Sueldo Base
		t5 = roundReal(a5[item]) // Arreglo Dias Laborados
		t6 = roundReal(a6[item]) // Arreglo Comisiones Ventas
		t7 = roundReal(a7[item]) // Arreglo Horas Extras Laborales
		t8 = roundReal(a8[item]) // Arreglo Deduciones Prestamos
		t9 = roundReal(a9[item]) // Arreglo Sueldo Neto
		
		s1 = space(10 - lenghtR(t1))
		s2 = space(8  - lenghtC(t2))
		s3 = space(10 - lenghtC(t3))
		s4 = space(12 - lenghtR(t4))
		s5 = space(15 - lenghtR(t5))
		s6 = space(18 - lenghtR(t6))
		s7 = space(23 - lenghtR(t7))
		s8 = space(22 - lenghtR(t8))
		s9 = space(13 - lenghtR(t9))
		
		Escribir "| ", s1, t1, " | ", s2, t2, " | ", s3, t3, " | ", s4, t4, " | ", s5, t5, " | ", s6, t6, " | ", s7, t7, " | ", s8, t8, " | ", s9, t9, " |"
	FinPara
FinSubProceso

// Registros, Sueldo, Dias, Comisiones, Horas Extras, Deducciones, Sueldo Neto
SubProceso calcularSalariosNetos(count, aSueldo, aDias, aVentas, aHoras, aDedu, aNeto)
	// Definir Variables
	Definir subsidio Como Real
	// Asingar Valores
	subsidio = 140606
	Para item = 1 Hasta count Con Paso 1 Hacer
		// Calcular Valor Hora Extra
		valHour = calculateHourValue(subsidio, item, aSueldo, aHoras)
		// Calcular subsidio de transporte
		valTrans = calculateSubsidio(subsidio, item, aSueldo)
		// Calcular Comisiones
		valComision = calculateComision(item, aVentas)
		// Calcular Sueldo Neto
		aNeto[item] = calculateSueldoNeto(item, aSueldo, aDias, aHoras,  valHour, valTrans, valComision)
	FinPara
FinSubProceso

// Calcular Promedios Sueldos
SubProceso calcularPromedioSueldo(count, aSueldo)
	Definir sumaSueldo, promedioSueldo Como Real
	sumaSueldo = 0
	
	Para item = 1 Hasta count Con Paso 1 Hacer
		sumaSueldo = sumaSueldo + aSueldo[item]
	FinPara
	
	promedioSueldo = sumaSueldo / count
	Escribir "El promedio de los sueldos básicos es: ", roundReal(promedioSueldo)
FinSubProceso

// Identificar Salarios Minimos y Maximos
SubProceso encontrarSalarioMinMax(count, aNeto)
	Definir minSalario, maxSalario, minIndex, maxIndex Como Real
	minSalario = aNeto[1]
	maxSalario = aNeto[1]
	minIndex = 1
	maxIndex = 1
	
	Para item = 2 Hasta count Con Paso 1 Hacer
		Si aNeto[item] < minSalario Entonces
			minSalario = aNeto[item]
			minIndex = item
		FinSi
		Si aNeto[item] > maxSalario Entonces
			maxSalario = aNeto[item]
			maxIndex = item
		FinSi
	FinPara
	
	//Escribir "El menor salario neto es: ", minSalario, " correspondiente al empleado ", documentos[minIndex], " - ", nombres[minIndex], " ", apellidos[minIndex]
	//Escribir "El mayor salario neto es: ", maxSalario, " correspondiente al empleado ", documentos[maxIndex], " - ", nombres[maxIndex], " ", apellidos[maxIndex]
FinSubProceso

// Calcular Valor por Hora
Funcion info <- calculateHourValue(subsidio, item, aSueldo, aHoras)
	// Definir Variables
	Definir daysLabor, hourDays Como Entero
	// Asingar Valores
	daysLabor = 30
	hourDays = 9 // Lunes a Viernes
	//horasDiaras = 8 // Lunes a Sabados
	
	// Calcular Valor Salario
	valSalary = aSueldo[item] + subsidio
	// Calcular Dia Salario
	daySalary = valSalary / daysLabor
	// Calcular Valor Hora
	valueHour = daySalary / hourDays
	// Retornar Valor Final
	info = valueHour * aHoras[item]
FinFuncion

// Calcular Subsidio de Transporte
Funcion info <- calculateSubsidio(subsidio, item, aSueldo)
	// Definir Variables
	Definir valueBase Como Real
	// Asignar Valores
	valueBase = 0
	slmvMain = 1350000 // 1 (SLMV): $1,350,000 COP
	slmvTwo = slmvMain * 2 // 2 (SLMV): $1,350,000 COP
	// Validar Condicion
	Si aSueldo[item] > slmvTwo Entonces
		// Asignar Valor
		valueBase = subsidio
	FinSi
	// Retornar Valor Final
	info = valueBase
FinFuncion

// Calcular Comision Ventas
Funcion info <- calculateComision(index, aVentas)
	// Definir Variables
	Definir valueComision, valorTotal Como Real
	// Asignar Valores
	valueComision = 0.20
	// Calcular Valor Total
	valorTotal = aVentas[index] * valueComision
	// Retornar Valor Final
	info = valorTotal
FinFuncion

// Calcular Sueldo Neto
Funcion info <- calculateSueldoNeto(item, aSueldo, aDias, aHoras,  valHour, valTrans, valComision)
	Definir dayMonth Como Entero
	dayMonth = 30
	// Calcular Valor Saldo Mensual
	valSaldo = aSueldo[item] / dayMonth
	// Calcular Dias Laborados
	valDays = valSaldo * aDias[item]
	// Calcular Horas Extras
	valExtra = valDays + (aHoras[item] * valHour)
	// Calcular Saldo Neto Final
	salarioNeto = valExtra + valComision + valTrans
	// Retornar Valor Final
	info = salarioNeto
FinFuncion

// Organizar Mensaje
Funcion strgLoadMssg
	m1 = "Documento"
	m2 = "Nombres"
	m3 = "Apellidos"
	m4 = "Sueldo Base"
	m5 = "Dias Laborados"
	m6 = "Comisiones Ventas"
	m7 = "Horas Extras Laboradas"
	m8 = "Deducciones Prestamos"
	m9 = "Salario Neto"
	Escribir "| ", m1, " | ", m2, " | ", m3, " | ", m4, " | ", m5, " | ", m6, " | ", m7, " | ", m8, " | ", m9, " |"
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