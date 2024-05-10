// Ejercicio Notas Estudiantes
Algoritmo Note_Student
	// Definir Variables
	Definir studentNum, studentCount Como Entero
	Definir presence, working, partial, product Como Real
	
	studentCount = 22
	Dimension noteFinal[studentCount, 6]
	
	Definir tPresence, tWorking, tPartial, tProduct Como Cadena
	tPresence = "Apoyo a la presencialidad"
	tWorking = "Trabajo en clase"
	tPartial = "Primer parcial"
	tProduct = "Producto Entregale"
	
	// Ejecutar Proceso
    Para studentNum = 1 Hasta studentCount Con Paso 1 Hacer
		message
		studentLt = space(15 - lenghtNumberReal(studentNum))
        Escribir "| ", space(13),  " Nro. de Estudiante: ", studentLt, studentNum, space(13), " |"
		Escribir repeat("-", 63)
		
		valuePr = execCalificate(presence, 25, tPresence)
		valueWo = execCalificate(working, 45, tWorking)
		valuePa = execCalificate(partial, 20, tPartial)
		valuePt = execCalificate(product, 10, tProduct)
		valueFn = valuePr + valueWo + valuePa + valuePt
		
		noteFinal[studentNum, 1] = studentNum
		noteFinal[studentNum, 2] = valuePr
        noteFinal[studentNum, 3] = valueWo
        noteFinal[studentNum, 4] = valuePa
        noteFinal[studentNum, 5] = valuePt
		noteFinal[studentNum, 6] = valueFn
		LimpiarPantalla
    FinPara
	
	// Visualizar Datos Organizados
	printResult(studenNum, studentCount, noteFinal)
FinAlgoritmo

Funcion printResult(studenNum, studentCount, noteFinal)
	// Visualizar Datos Organizados
	message
    Escribir "| Estudiante | Nota 1 | Nota 2 | Nota 3 | Nota 4 | Nota Final |"
    Para studentNum = 1 Hasta studentCount Con Paso 1 Hacer
		a1 = space(11 - lenghtNumberReal(noteFinal[studentNum, 1]))
		a2 = space(7 - lenghtNumberReal(noteFinal[studentNum, 2]))
		a3 = space(7 - lenghtNumberReal(noteFinal[studentNum, 3]))
		a4 = space(7 - lenghtNumberReal(noteFinal[studentNum, 4]))
		a5 = space(7 - lenghtNumberReal(noteFinal[studentNum, 5]))
		a6 = space(11 - lenghtNumberReal(noteFinal[studentNum, 6]))
		
		t1 = noteFinal[studentNum, 1]
		t2 = noteFinal[studentNum, 2]
		t3 = noteFinal[studentNum, 3]
		t4 = noteFinal[studentNum, 4]
		t5 = noteFinal[studentNum, 5]
		t6 = noteFinal[studentNum, 6]
		
        Escribir "| ", a1, t1, " | ", a2, t2, " | ", a3, t3, " | ", a4, t4, " | ", a5, t5, " | ", a6, t6, " |"
    FinPara
	Escribir repeat("-", 63)
FinFuncion

Funcion info <- execCalificate(value, perc, text)
	Escribir "| Digita la nota de (", text, ") - (", perc, "%)"
	Leer value
	info = value * perc / 100
FinFuncion

Funcion info <- repeat(caracter, cantidad)
    Definir resultado Como Cadena
    resultado = ""
    Para i = 1 Hasta cantidad Con Paso 1 Hacer
        resultado = resultado + caracter
    FinPara
    info = resultado
FinFuncion

Funcion info <- space(cantidad)
    Definir resultado Como Cadena
    final = cantidad - 1
    resultado = ""
    Para i=1 Hasta final Con Paso 1 Hacer
		resultado = resultado + " "
	Fin Para
    info = resultado
FinFuncion

Funcion info <- lenghtNumberReal(numeroReal)
    Definir texto Como Cadena
    texto = ConvertirATexto(numeroReal)
    info = Longitud(texto)
FinFuncion

Funcion message
	Escribir repeat("-", 63)
	Escribir repeat("*", 22), " Fundacion Renacer ", repeat("*", 22)
	Escribir repeat("-", 63)
FinFuncion
