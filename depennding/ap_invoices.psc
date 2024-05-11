// Ejercicio Facturas 
Algoritmo Invoices
	// Definir Variables
    Definir value, count Como Real
	
	message
    // Capturar Datos
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
	
	// Visualizar Datos
	printResult(count, value, subTotal, total)
FinFuncion

// Imprimir Resultados
Funcion printResult(count, value, subTl, total)
	// Definir Variables
	Definir tProd, tSubt, tPaym Como Caracter
	
	// Asignar Mensajes
	tCnt  = "Cantidad de Productos  "
	tProd = "Valor Unitario Producto"
	tSubt = "Subtotal Sin IVA       "
	tPaym = "Valor Total Pago       "
	
	// Redondear Valores
	rProd = roundReal(value)
	rSubt = roundReal(subTl)
	rPaym = roundReal(total)
	
	// Asignar Espacios
	sCnt  = space(16 - lenght(count))
	sProd = space(16 - lenght(rProd))
	sSubt = space(16 - lenght(rSubt))
	sPaym = space(16 - lenght(rPaym))
	
	// Imprimir Mensajes
	message
	Escribir "| ", tCnt, " | ", sCnt, count, " |"
	Escribir "| ", tProd, " | ", sProd, rProd, " |"
    Escribir "| ", tSubt, " | ", sSubt, rSubt, " |"
    Escribir "| ", tPaym, " | ", sPaym, rPaym, " |"
	Escribir repeat("-", 44)
	webPage
FinFuncion

// Mensaje Personalizado
Funcion message
	Escribir repeat("-", 45)
	Escribir repeat("*", 15), " Super Mercado " , repeat("*", 15)
	Escribir repeat("-", 45)
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
    Para i = 1 Hasta final Con Paso 1 Hacer
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

// Redondear Valor Real
Funcion info <- roundReal(value)
	Definir endInt, endDecimal Como Real
	endInt <- trunc(value)
	info = endInt
FinFuncion

// Mensaje Personalizadp
Funcion webPage
	Escribir repeat("*", 10), "  www.adisonjimenez.net  ", repeat("*", 10)
	Escribir repeat("*", 10), "     www.engsoft.app     ", repeat("*", 10)
	Escribir repeat("-", 45)
FinFuncion
