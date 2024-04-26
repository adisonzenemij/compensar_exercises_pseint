// Figura Geometrica: Triangulo
Algoritmo Geometry_Triangle
	Definir left, right, below Como Real
	Escribir "Digita los tres lados del triangulo"
	Leer left, right, below
	execCalculate(left, right, below)
FinAlgoritmo

Funcion execCalculate(left, right, below)
	Definir perimetro, semi, area Como Real
	
	perimetro = left + right + below
	semi = perimetro / 2
	//area = rc(semi * (semi - left) * (semi - right) * (semi - below))
	area = (semi * (semi- left) * (semi - right) * (semi - below)) ^ 0.5
	
	Escribir "El per�metro del tri�ngulo es:", " ", perimetro
	Escribir "El �rea del tri�ngulo es:", " ", area
FinFuncion