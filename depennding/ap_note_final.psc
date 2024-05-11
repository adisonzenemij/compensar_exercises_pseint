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
		studentLt = space(15 - lenght(studentNum))
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
	
	// Visualizar Datos
	printResult(studenNum, studentCount, noteFinal)
FinAlgoritmo

// Imprimir Resultados
Funcion printResult(studenNum, studentCount, noteFinal)
	// Visualizar Datos Organizados
	message
    Escribir "| Estudiante | Nota 1 | Nota 2 | Nota 3 | Nota 4 | Nota Final |"
    Para studentNum = 1 Hasta studentCount Con Paso 1 Hacer
		
		tStud = noteFinal[studentNum, 1]
		tOne = noteFinal[studentNum, 2]
		tTwo = noteFinal[studentNum, 3]
		tThree = noteFinal[studentNum, 4]
		tFour = noteFinal[studentNum, 5]
		tFinal = noteFinal[studentNum, 6]
		
		sStud = space(11 - lenght(tStud))
		sOne = space(7 - lenght(tOne))
		sTwo = space(7 - lenght(tTwo))
		sThree = space(7 - lenght(tThree))
		sFour = space(7 - lenght(tFour))
		sFinal = space(11 - lenght(tFinal))
		
        Escribir "| ", sStud, tStud, " | ", sOne, tOne, " | ", sTwo, tTwo, " | ", sThree, tThree, " | ", sFour, tFour, " | ", sFinal, tFinal, " |"
    FinPara
	Escribir repeat("-", 63)
	webPage
FinFuncion

Funcion info <- execCalificate(value, perc, text)
	Escribir "| Digita la nota de (", text, ") - (", perc, "%)"
	Leer value
	info = value * perc / 100
FinFuncion

// Mensaje Personalizado
Funcion message
	Escribir repeat("-", 63)
	Escribir repeat("*", 22), " Fundacion Renacer ", repeat("*", 22)
	Escribir repeat("-", 63)
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
	Escribir repeat("*", 19), "  www.adisonjimenez.net  ", repeat("*", 19)
	Escribir repeat("*", 19), "     www.engsoft.app     ", repeat("*", 19)
	Escribir repeat("-", 63)
FinFuncion
