Algoritmo Cook_Egg
	Definir continuar Como Logico
	continuar = Verdadero
	Mientras continuar Hacer
		Escribir "¿Cuántos huevos de codorniz comprarás?"
		Leer huevos
		LimpiarPantalla
		Si IsNumber(huevos) Entonces
			excCookFood(huevos)
			continuar = Falso
		Sino
			LimpiarPantalla
			Escribir "Permitido unicamente números"
		FinSi
	FinMientras
FinAlgoritmo

// Cocinar huevos
Funcion excCookFood(huevos)
	Escribir "(Si | No): ¿Encender el fogón de la estufa?"
	Leer fogon
	Si fogon = "Si" Entonces
		LimpiarPantalla
		excPotWater(huevos)
	Sino
		LimpiarPantalla
		Escribir "Tienes que encender el fogón"
		excCookFood(huevos)
	Fin Si
FinFuncion

// Olla con agua
Funcion excPotWater(huevos)
	Escribir "(Si | No): ¿Colocar la olla con agua?"
	Leer olla
	Si olla = "Si" Entonces
		LimpiarPantalla
		excMakerPot(huevos)
	Sino
		LimpiarPantalla
		Escribir "Tienes que colocar la olla con agua"
		excPotWater(huevos)
	Fin Si
FinFuncion

// Hechar alimentos en olla
Funcion excMakerPot(huevos)
	Escribir "(Si | No): ¿Hechar los " + huevos + " huevos en la olla?"
	Leer agua
	Si agua = "Si" Entonces
		LimpiarPantalla
		validTimeBoil(huevos)
	Sino
		LimpiarPantalla
		Escribir "Tienes que hechar los huevos en la olla"
		excMakerPot(huevos)
	Fin Si
FinFuncion

// Validar captura de numeros
Funcion validTimeBoil(huevos)
	Escribir "¿Cuánto tiempo hervirán los " + huevos + " huevos?"
	Leer timeMinute
	Si IsNumber(timeMinute) Entonces
		LimpiarPantalla
		validTimeEgg(timeMinute, huevos)
	Sino
		LimpiarPantalla
		Escribir "Permitido unicamente números"
		validTimeBoil(huevos)
	FinSi
FinFuncion

// Validar el tiempo a hervir alimentos
Funcion validTimeEgg(hTime, huevos)
	Si hTime >= 5 Y hTime <= 20 Entonces
		excTimeEgg(hTime, huevos)
	Sino
		Escribir "Minimo 5 minutos y máximo 20 minutos"
		validTimeBoil(huevos)
	Fin Si
FinFuncion

// Ejecutar el tiempo de cocion
Funcion excTimeEgg(hTime, huevos)
	Escribir "Cocinando huevos en la olla"
	Definir contador Como Entero
	Para i = 1 Hasta hTime Hacer
		tCount = hTime * 10000
		cadena = ""
		// Iterar el valor capturado
		Para j = 1 Hasta hTime Hacer
			cadena = cadena + "*"
		Fin Para
		Escribir(cadena)
		// Iterar el tiempo
		Para j = 1 Hasta tCount Hacer
			x = j * j
		Fin Para
	FinPara
	excEggPeel(huevos)
FinFuncion

Funcion excEggPeel(huevos)
	Escribir "(Si | No): ¿Deseas quitar la cascara de los " + huevos + " huevos?"
	Leer fogon
	Si fogon = "Si" Entonces
		LimpiarPantalla
		Escribir "Me encantó guiarte a cocinar unos deliciosos huevos de codorniz XD!!"
	Sino
		LimpiarPantalla
		Escribir "Te recomendamos quitar la cascara a los huevos"
		Escribir "Sabrán más deliciosos, te lo digo por experencia!!"
		excEggPeel(huevos)
	Fin Si
FinFuncion

Funcion info <- IsNumber(valor)
	Definir esNumeros Como Logico
	Definir longitudes Como Entero
	Definir i Como Entero
	Definir caracter Como Caracter
	
	longitudes = Longitud(valor)
	esNumeros = Verdadero
	
	Para i = 1 Hasta longitudes Hacer
		caracter = SubCadena(valor, i, 1)
		Si caracter < "0" O caracter > "9" Entonces
			esNumeros = Falso
		FinSi
	FinPara
	
	info = esNumeros
FinFuncion