Algoritmo DataLiquidation
	// Definir Variables
	Definir count Como Entero
	Definir aNames, aSurNames Como Cadena
	
	strgLoadLiq
	// Capturar Valores
	Escribir "¿Cuantos empleados desea liquidar?"
	Leer count
	Limpiar Pantalla
	
	// Definir Arreglos
	Dimension aNames(count), aSurNames(count), dataArray[count, 7]
	
	// Procesar Informacion
	strgEmployee(count, aNames, aSurNames, dataArray)
	calculateSalaryNet(count, dataArray)
	
	// Imprimir Mensajes
	strgLoadLiq
	strgLoadMssg
	
	// Procesar Informacion
	strgLoadData(count, aNames, aSurNames, dataArray)
	calculateAverageSalary(count, dataArray)
	salaryFoundMinMax(count, dataArray)
FinAlgoritmo

// Capturar Informacion de Usuario
SubProceso strgEmployee(index, aNames, aSurNames, dataArray)
	// Recorrer Datos
	Para item = 1 Hasta index Con Paso 1 Hacer
		aNames[item] <- loadTextC("Nombres")
		aSurNames[item] <- loadTextC("Apellidos")
		dataArray[item, 1] = loadTextR("Documento")
		dataArray[item, 2] = loadTextR("Sueldo Base")
		dataArray[item, 3] = loadTextR("Dias Laborados")
		dataArray[item, 4] = loadTextR("Comisiones por Ventas")
		dataArray[item, 5] = loadTextR("Horas Extras Laboradas")
		dataArray[item, 6] = loadTextR("Deducciones por Prestamos")
		Limpiar Pantalla
	FinPara
FinSubProceso

// Cargar Datos de Arreglos
SubProceso strgLoadData(index, aNames, aSurNames, dataArray)
	// Recorrer Datos
	Para item = 1 Hasta index Con Paso 1 Hacer
		// Asignar Valores
		t1 = aNames[item]                  // Arreglo Nombres
		t2 = aSurNames[item]               // Arreglo Apellidos
		// Redondear y Asignar Valores
		t3 = roundReal(dataArray[item, 1]) // Arreglo Documento
		t4 = roundReal(dataArray[item, 2]) // Arreglo Sueldo Base
		t5 = roundReal(dataArray[item, 3]) // Arreglo Dias Laborados
		t6 = roundReal(dataArray[item, 4]) // Arreglo Comisiones Ventas
		t7 = roundReal(dataArray[item, 5]) // Arreglo Horas Extras Laborales
		t8 = roundReal(dataArray[item, 6]) // Arreglo Deduciones Prestamos
		t9 = roundReal(dataArray[item, 7]) // Arreglo Sueldo Neto
		// Ajustar Espaciados
		s1 = space(8  - lenghtC(t1))
		s2 = space(10 - lenghtC(t2))
		s3 = space(10 - lenghtR(t3))
		s4 = space(12 - lenghtR(t4))
		s5 = space(15 - lenghtR(t5))
		s6 = space(18 - lenghtR(t6))
		s7 = space(23 - lenghtR(t7))
		s8 = space(22 - lenghtR(t8))
		s9 = space(13 - lenghtR(t9))
		// Imprimir Mnesajes
		Escribir "| ", s1, t1, " | ", s2, t2, " | ", s3, t3, " | ", s4, t4, " | ", s5, t5, " | ", s6, t6, " | ", s7, t7, " | ", s8, t8, " | ", s9, t9, " |"
	FinPara
	// Imprimir Mnesajes
	Escribir repeat("*", 150)
FinSubProceso

// Calcular Salarios Netos
SubProceso calculateSalaryNet(count, data)
	// Definir Variables
	Definir subsidy Como Real
	// Asingar Valores
	subsidy = 140606
	// Ejecutar Proceso
	Para item = 1 Hasta count Con Paso 1 Hacer
		// Calcular Valor Hora Extra
		valHour = calculateHourValue(subsidy, item, data)
		// Calcular subsidio de transporte
		valTrans = calculateSubsidy(subsidy, item, data)
		// Calcular Comisiones
		valComision = calculateComision(item, data)
		// Calcular Sueldo Neto
		// data[item, 7] = Sueldo Neto
		data[item, 7] = calculateSueldoNeto(item, data,  valHour, valTrans, valComision)
	FinPara
FinSubProceso

// Calcular Promedios Sueldos
SubProceso calculateAverageSalary(count, data)
	// Definir Variables
	Definir sumaSalary, averageSalary Como Real
	sumaSalary = 0
	// Ejecutar Proceso
	Para item = 1 Hasta count Con Paso 1 Hacer
		sumaSalary = sumaSalary + data[item, 2]
	FinPara
	// Asignar Valores
	averageSalary = sumaSalary / count
	roundAverage = roundReal(averageSalary)
	spaceAverage = space(13 - lenghtR(roundAverage))
	// Imprimir Resultados
	message = "Promedio Sueldos Basicos"
	Escribir "|", repeat(" ", 4), message, repeat(" ", 5), "|", spaceAverage, roundAverage, " | ", repeat(" ", 99), "|"
	Escribir repeat("*", 150)
FinSubProceso

SubProceso salaryFoundMinMax(count, data)
	// Definir Variables
    Definir minSalary, maxSalary Como Real
    Definir minIndex, maxIndex Como Entero
	Definir documentMin, documentMax Como Entero
    // Asignar Valores
    minIndex = 1
    maxIndex = 1
	// Inicializar valores del sueldo
    minSalary = data[1, 7]
    maxSalary = data[1, 7]
    // Inicializar Documentos
    documentMin = data[1, 1]
    documentMax = data[1, 1]
    // Recorrer Datos
    Para item = 2 Hasta count Con Paso 1 Hacer
		// Verificar Salario Minimo
        Si data[item, 7] < minSalary Entonces
            minSalary = data[item, 7]
            minIndex = item
            documentMin = data[item, 1]
        FinSi
		// Verificar Salario Maximo
        Si data[item, 7] > maxSalary Entonces
            maxSalary = data[item, 7]
            maxIndex = item
            documentMax = data[item, 1]
        FinSi
    FinPara
    // Organizar Mensajes
	mDoc = "Documento"
	tDcMin = documentMin
	sDcMin = space(11 - lenghtR(tDcMin))
	tDcMax = documentMax
	sDcMax = space(11 - lenghtR(tDcMax))
	// Organizar Mensajes
	mSlMin = "Salario Neto Minimo"
	tSlMin = roundReal(minSalary)
	sSlMin = space(82 - lenghtR(tSlMin))
	// Organizar Mensajes
	mSlMax = "Salario Neto Maximo"
	tSlMax = roundReal(maxSalary)
	sSlMax = space(82 - lenghtR(tSlMax))
	// Imprimir Resultados
	Escribir "|", repeat(" ", 6), mDoc, repeat(" ", 6), "|", sDcMin, tDcMin, " |", repeat(" ", 5), mSlMin, repeat(" ", 5), " | ", sSlMin, tSlMin, " |"
	Escribir "|", repeat(" ", 6), mDoc, repeat(" ", 6), "|", sDcMax, tDcMax, " |", repeat(" ", 5), mSlMax, repeat(" ", 5), " | ", sSlMax, tSlMax, " |"
	Escribir repeat("*", 150)
FinSubProceso


// Calcular Valor por Hora
Funcion info <- calculateHourValue(subsidy, item, data)
	// data[item, 2] = Sueldo Base
	// data[item, 5] = Horas Extras
	// Definir Variables
	Definir daysLabor, hourDays Como Entero
	// Asingar Valores
	daysLabor = 30
	hourDays = 9 // Lunes a Viernes
	//horasDiaras = 8 // Lunes a Sabados
	// Calcular Valor Salario
	valSalary = data[item, 2] + subsidy
	// Calcular Dia Salario
	daySalary = valSalary / daysLabor
	// Calcular Valor Hora
	valueHour = daySalary / hourDays
	// Retornar Valor Final
	info = valueHour * data[item, 5]
FinFuncion

// Calcular Subsidio de Transporte
Funcion info <- calculateSubsidy(subsidy, item, data)
	// data[item, 2] = Sueldo Base
	// Definir Variables
	Definir valueBase Como Real
	// Asignar Valores
	valueBase = 0
	slmvMain = 1350000 // 1 (SLMV): $1,350,000 COP
	slmvTwo = slmvMain * 2 // 2 (SLMV): $1,350,000 COP
	// Validar Condicion
	Si data[item, 2] > slmvTwo Entonces
		// Asignar Valor
		valueBase = subsidy
	FinSi
	// Retornar Valor Final
	info = valueBase
FinFuncion

// Calcular Comision Ventas
Funcion info <- calculateComision(index, data)
	// data[item, 4] = Comisiones Ventas
	// Definir Variables
	Definir valueComision, valorTotal Como Real
	// Asignar Valores
	valueComision = 0.20
	//Escribir "data[index, 4]: ", data[index, 4]
	// Calcular Valor Total
	valorTotal = data[index, 4] * valueComision
	// Retornar Valor Final
	info = valorTotal
FinFuncion

// Calcular Sueldo Neto
Funcion info <- calculateSueldoNeto(item, data,  valHour, valTrans, valComision)
	// data[item, 3] = Dias Laborados
	// data[item, 5] = Horas Extras
	Definir dayMonth Como Entero
	// Asignar Valores
	dayMonth = 30
	// Calcular Valor Saldo Mensual
	valSaldo = data[item, 2] / dayMonth
	// Calcular Dias Laborados
	valDays = valSaldo * data[item, 3]
	// Calcular Horas Extras
	valExtra = valDays + (data[item, 5] * valHour)
	// Calcular Saldo Neto Final
	salarioNeto = valExtra + valComision + valTrans
	// Retornar Valor Final
	info = salarioNeto
FinFuncion

Funcion strgLoadLiq
	// Definir Variables
	Definir message Como Cadena
	// Organizar Mensajes
	message = "Liquidacion Nomina Mensual Empresa XYZ"
	// Imprimir Mensajes
	Escribir repeat("*", 150)
	Escribir "| ", repeat("*", 10), repeat(" ", 44), message, repeat(" ", 44), repeat("*", 10), " |"
	Escribir repeat("*", 150)
FinFuncion

// Organizar Mensaje
Funcion strgLoadMssg
	// Organizar Mensajes
	m1 = "Nombres"
	m2 = "Apellidos"
	m3 = "Documento"
	m4 = "Sueldo Base"
	m5 = "Dias Laborados"
	m6 = "Comisiones Ventas"
	m7 = "Horas Extras Laboradas"
	m8 = "Deducciones Prestamos"
	m9 = "Salario Neto"
	// Imprimir Mensajes
	Escribir "| ", m1, " | ", m2, " | ", m3, " | ", m4, " | ", m5, " | ", m6, " | ", m7, " | ", m8, " | ", m9, " |"
	Escribir repeat("*", 150)
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