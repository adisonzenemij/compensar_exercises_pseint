// Ejercicio Facturas 
Algoritmo Invoices
	// Definir Variables
    Definir value, count Como Real
	
    // Capturar Datos
	Escribir repeat("-", 44)
	Escribir repeat("*", 15), " SuperMercado " , repeat("*", 15)
	Escribir repeat("-", 44)
    Escribir "Digita el valor unitario del producto"
    Leer value
    Escribir "Digita la cantidad de productos"
    Leer count
	
	// Ejecutar Proceso
	proccess(value, count)
FinAlgoritmo

// Ejecutar Proceso
Funcion proccess(value, count)
	// Definir Variables
    Definir subtotal, total, iva Como Real
	// Calcular sin IVA
    subTotal = value * count
    // Calcular Valor IVA
    iva = subTotal * 0.19
    // Calcular Total Pago
    total = subTotal + iva
	// Imprimir Resultados
	printResult(value, subTotal, total)
FinFuncion

// Imprimir Resultados
Funcion printResult(value, subTl, total)
	// Definir Variables
	Definir tProd, tSubt, tPaym Como Caracter
	
	// Asignar Mensajes
	tProd = "Valor Unitario Producto"
	tSubt = "Subtotal Sin IVA       "
	tPaym = "Valor Total Pago       "
	
	// Redondear Valores
	rProd = roundReal(value)
	rSubt = roundReal(subTl)
	rPaym = roundReal(total)
	
	// Asignar Espacios
	sProd = space(15 - lenght(rProd))
	sSubt = space(15 - lenght(rSubt))
	sPaym = space(15 - lenght(rPaym))
	
	// Imprimir Mensajes
	Escribir repeat("-", 44)
	Escribir "| ", tProd, " | ", sProd, rProd, " |"
    Escribir "| ", tSubt, " | ", sSubt, rSubt, " |"
    Escribir "| ", tPaym, " | ", sPaym, rPaym, " |"
	Escribir repeat("-", 44)
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

// Redondear Decimales Real
Funcion info <- roundDecimal(value)
	Definir int, decimal, rounding Como Real
	int <- trunc(value)
	decimal <- value - int
	decimal <- decimal * 100
	decimal <- roundReal(decimal)
	rounding <- (int + decimal / 100)
	Escribir "rounding: ", rounding
	info  = rounding
FinFuncion

// Redondear Valor Real
Funcion info <- roundReal(value)
	Escribir "value: ", value
	Definir endInt, endDecimal Como Real
	endInt <- trunc(value)
	Escribir "endInt: ", endInt
	endDecimal <- (value - endInt) * 100
	Si endDecimal >= 50 Entonces
		info = endInt + 1
	Sino
		info = endInt
	FinSi
FinFuncion