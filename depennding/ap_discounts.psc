// Ejercicio Descuentos
Algoritmo Discounts
	// Definir Variables
	Definir buy Como Real
	// Capturar Datos
	Escribir repeat("-", 39)
	Escribir repeat("*", 12), " Supermercado ", repeat("*", 12)
	Escribir repeat("-", 39)
	Escribir "*    Digita el valor de la compra:    *"
    Leer buy
	// Ejecutar Proceso
	execCalculate(buy)
FinAlgoritmo

// Ejecutar Proceso
Funcion execCalculate(buy)
	// Definir Variables
	Definir price, total Como Real
	Definir discount, rebate Como Real
	// Asignar Valores
	price = 178000
	// Procesar Datos
	Si buy >= price Entonces
		rebate = 0.11
		discount = buy * rebate
	FinSi
	Si buy < price Entonces
		rebate = 0.02
		discount = buy * rebate
	FinSi
    total = buy - discount
	// Visualizar Datos
	printResult(buy, discount, rebate * 100, total)
FinFuncion

// Imprimir Resultados
Funcion printResult(buy, discount, rebate, total)
	ltBuy = space(14 - lenght(buy))
	ltRebate = space(13 - lenght(rebate))
	ltDiscount = space(14 - lenght(discount))
	ltTotal = space(14 - lenght(total))
	
	Escribir repeat("-", 39)
    Escribir repeat("*", 12), " Factura Final ", repeat("*", 12)
    Escribir repeat("-", 39)
    Escribir "| Valor Pagado        | ", ltBuy, buy, " |"
	Escribir "| Descuento Aplicado  | ", ltRebate, rebate, "% |"
    Escribir "| Descuento           | ", ltDiscount, discount, " |"
    Escribir "| Valor Total         | ", ltTotal, total, " |"
    Escribir repeat("-", 39)
	
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
	Escribir repeat("*", 7), "  www.adisonjimenez.net  ", repeat("*", 7)
	Escribir repeat("*", 7), "     www.engsoft.app     ", repeat("*", 7)
	Escribir repeat("-", 39)
FinFuncion
