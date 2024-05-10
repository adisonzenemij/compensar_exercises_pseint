// Ejercicio Descuento
Algoritmo Discounts
	// Definir Variables
	Definir buy Como Real
	// Capturar Datos
	Escribir "---------------------------------------"
	Escribir "************ Supermercado *************"
	Escribir "---------------------------------------"
	Escribir "*  Digita el valor de la compra:  *"
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
	// Imprimir Resultados
	printResult(buy, discount, rebate * 100, total)
FinFuncion

// Imprimir Resultados
Funcion printResult(buy, discount, rebate, total)
	ltBuy = space(14 - lenghtNumberReal(buy))
	ltRebate = space(13 - lenghtNumberReal(rebate))
	ltDiscount = space(14 - lenghtNumberReal(discount))
	ltTotal = space(14 - lenghtNumberReal(total))
	
    Escribir "---------------------------------------"
    Escribir "************ Factura Final ************"
    Escribir "---------------------------------------"
    Escribir "| Valor Pagado        | ", ltBuy, buy, " |"
	Escribir "| Descuento Aplicado  | ", ltRebate, rebate, "% |"
    Escribir "| Descuento           | ", ltDiscount, discount, " |"
    Escribir "| Valor Total         | ", ltTotal, total, " |"
    Escribir "---------------------------------------"
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
