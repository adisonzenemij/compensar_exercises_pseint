Algoritmo OneAlgorithm
	// Funcion para leer variables
	opEscribirLeer
	
	// Funcion para devolver un valor
	rsAsignar = opAsignar
	Escribir "Resultado Suma: ", rsAsignar
	
	// Funcion utilizando condicional si entonces
	opSiEntonces
	// Funcion utilizando condicional segun
	opSegun
	// Funcion utilizando condicional mientras
	opMientras
	// Funcion utilizando condicional Repetir
	opRepetir
	// Funcion utilizando condicional para
	opPara
FinAlgoritmo

Funcion opEscribirLeer
	mensaje
	Escribir "Funcion Escribir Leer"
	Escribir "Bienvenido a la programacion"
	Escribir "Cual es tu nombre"
	Leer nombre
	Escribir "Gusto en conocerte programador: ", nombre
FinFuncion

Funcion datos <- opAsignar
	mensaje
	Escribir "Funcion Asignar"
	Definir numero1, numero2 Como Entero
	Escribir "Digita el primer numero"
	Leer numero1
	Escribir "Digita el segundo numero"
	Leer numero2
	datos = numero1 + numero2
FinFuncion

// Funcion utilizando condicional si entonces
Funcion opSiEntonces
	mensaje
	Escribir "Funcion Si Entonces"
	Definir numero1, numero2 Como Real
	Escribir "Digita el primer numero"
	Leer numero1
	Escribir "Digita el segundo numero"
	Leer numero2
	Si numero1 = numero2 Entonces
		Escribir "Numeros Iguales"
	SiNo
		Escribir "Numero Diferentes"
	Fin Si
FinFuncion

// Funcion utilizando condicional segun
Funcion opSegun
	mensaje
	Escribir "Funcion Segun"
	Definir comida Como Entero
	Escribir "Opciones: Pasta, Pollo, Carne"
	Escribir "Que te gusta comer"
	Leer comida
	Segun comida Hacer
		Pasta:
			Escribir "Que sabroso saber que te gusta la pasta"
		Pollo:
			Escribir "Que sabroso saber que te gusta la pasta"
		Carne:
			Escribir "Que sabroso saber que te gusta la pasta"
		De Otro Modo:
			Escribir "Esta bien que te guste otra comida"
	Fin Segun
FinFuncion

// Funcion utilizando condicional mientras
Funcion opMientras
	mensaje
	Escribir "Funcion Mientras"
	Definir num Como Entero
	Escribir "Digita un numero que sea menor a 10"
	Leer num
	Mientras num <= 10 Hacer
		Escribir num
		num <- num + 1
	FinMientras
FinFuncion

// Funcion utilizando condicional repetir
Funcion opRepetir
	mensaje
	Escribir "Funcion Repetir"
	Definir num Como Entero
	Repetir
		Escribir "Digita el numero 1 para continuar"
		Leer num
	Hasta Que num = 1
	Escribir "Felicidades puedes continuar"
FinFuncion

// Funcion utilizando condicional para
Funcion opPara
	mensaje
	Escribir "Funcion Para"
	Definir num Como Entero
	Escribir "Digita un numero"
	Leer num
	Para conteo = 0 Hasta num Con Paso 1 Hacer
		Escribir conteo
	Fin Para
FinFuncion

Funcion mensaje
	Escribir "*********************************************"
FinFuncion
	