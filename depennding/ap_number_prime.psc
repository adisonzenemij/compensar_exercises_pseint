// Ejercicio Numeros Primos
Algoritmo Number_Prime
	// Definir Variables
    Definir number, divider, isPrime Como Entero
	
	// Asignar Valores
	idxTotal = 0
	idxMore = 1
	count = 100
	Dimension data[count, 2]
	
    // Iterar sobre los números del 1 al 100
    Para number = 1 Hasta count Con Paso 1 Hacer
        // Inicializar Valores
        isPrime = 1
        
        // Ejecutar Proceso
        Para divider = 2 Hasta (number / 2) Con Paso 1 Hacer
            Si number MOD divider == 0 Entonces
                // Numero no primo
                isPrime = 0
            FinSi
        FinPara
        
        // Mostrar el número si es primo
        Si isPrime == 1 Entonces
			data[idxMore, 1] = idxMore
			data[idxMore, 2] = number
			// Incrementar indices
			idxMore = idxMore + 1
        FinSi
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
	Escribir "|      Numero Primo     |"
	Escribir repeat("-", 25)
	Para item = 1 Hasta index Con Paso 1 Hacer
		// Asignar Valores
		tNum = data[item, 2]
		// Calcular Espacios
		sNum = space(13 - lenght(tNum))
		// Imprimir Resultados
		Escribir "| ", sNum, tNum, repeat(" ", 9), " |"
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
