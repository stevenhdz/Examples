Algoritmo sin_titulo
	N <- 0; T <- 0; sal <- 0; com <- 0; comtotal <- 0; vent <- 0; 
	Escribir 'Digite la cantidad de vendedores '
	Leer N
	dimension vector[2]
	comtotal <- ciclo(N,vector)
	Escribir 'el total de las comisiones de todos los trabajadores es ',comtotal
	imprimir "el total de las ventas de todos los trabajadores es ",vector[2]
	
FinAlgoritmo

Funcion comtotal = ciclo(N,vector)
	Para i<-1 Hasta N Hacer
		Escribir 'digite el salario del vendedor'
		Leer sal
		Escribir 'digite el numero de ventas'
		Leer T
		comxtrab <- ciclo2(T,vector)
		totalventas <- 0
		Escribir 'la comision a pagar a este trabajador es de ',comxtrab
		Escribir 'el total de ventas realizado por este trabajor ',vector[1]
		comtotal <- comtotal+comxtrab
		vector[2] <- vector[2]+totalventas
	FinPara
FinFuncion

Funcion comxtrab = ciclo2(T,vector)
	comxtrab <- 0
	Para j<-1 Hasta T Hacer
		Escribir 'Digite el valor de cada venta'
		Leer vent
		Si vent>10000 Y vent<=30000 Entonces
			com <- vent*0.05
		SiNo
			Si vent>30000 Y vent<=100000 Entonces
				com <- vent*0.1
			SiNo
				Si vent>100000 Entonces
					com <- vent*0.12
				SiNo
					Escribir 'la venta no tiene comision'
					com <- 0
				FinSi
			FinSi
		FinSi
		comxtrab <- comxtrab+com
		vector[1] <- vector[1]+vent
	FinPara
FinFuncion
