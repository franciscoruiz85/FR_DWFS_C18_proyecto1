Algoritmo proyecto1
	//Definimos las variables a utilizar
	Definir respuesta Como Entero
	Definir precio Como Entero
	Definir cupon Como Entero
	Definir pcupon Como Entero
	Definir vcupon Como Real
	Definir descuento Como Entero
	Definir descant Como Real
	Definir iva Como Real
	Definir valor_iva Como Real
	Definir cantidad Como Entero
	Definir destino Como Entero
	Definir peso Como Real
	Definir despacho Como Entero
	Definir costo_envio Como Entero
	Definir valor_cantidad Como Real
	Definir subtotal Como Real
	Definir total Como Real
	Dimension destinos[4]
	
	//Asignamos valores a las variables de calculo o información
	destinos[1] <- 'Nueva York'
	destinos[2] <- 'Manhathan'
	destinos[3] <- 'Brooklin'
	destinos[4] <- 'Nueva Jersey'
	respuesta <- 1
	pcupon <- 10
	descuento <- 10
	descant <- 0.95
	iva <- 1.12
	despacho <- 10
	peso <- 1.5
	
	//Comenzamos a solicitar los datos al cliente
	//Solicitamos el precio del producto
	Escribir 'Ingrese el precio del producto'
	Leer precio
	//Preguntamos si cuenta con un cupón de descuento
	Escribir '¿Tiene un cupon de descuento?'
	Mientras cupon <> 1 y cupon <> 2 Hacer
		Escribir 'Responda con los números: 1 para sí o 2 para no'
		Leer cupon
	FinMientras
	//Preguntamos cúantos productos desea comprar
	Escribir '¿Cuántos productos desea comprar?'
	Leer cantidad
	//Solicitamos el destino para el despacho
	Mientras destino < 1 o destino > 4 Hacer
		Escribir 'Ingrese el número del destino para el despacho'
		Para i<-1 Hasta 4 Hacer
			Escribir i,'-',destinos[i]
		FinPara
		Leer destino
	FinMientras
	//Calculos de la venta
	Si cupon = 1 Entonces
		vcupon <- precio - ((precio * pcupon) /100)
	SiNo
		vcupon <- precio
	FinSi
	costo_envio <- despacho + (2 * (peso * cantidad))
	valor_iva <- vcupon * iva
	Si cantidad > 1 Entonces
		valor_cantidad <- valor_iva * descant
	SiNo
		valor_cantidad <- valor_iva
	FinSi
	subtotal <- valor_cantidad * cantidad
	total <- subtotal + costo_envio
	Escribir 'El precio original del producto es: ',precio
	Si cupon = 1 Entonces
		Escribir 'Se aplicó un cupon de descuento de un ', pcupon,'% y se cobró el IVA(12%)'
		Escribir 'Valor del producto después de descuentos e impuesto es: ',valor_iva
	SiNo
		Escribir 'Se cobró el IVA(12%)'
		Escribir 'Valor del producto después del impuesto es: ',valor_iva
	FinSi
	Escribir 'Compró ',cantidad,' unidad(es)'
	Si cantidad > 1 Entonces
		Escribir 'Se aplicó un descuento por cantidad comprada de: 5%'
		Escribir 'El valor del producto después de este descuento es: ', valor_cantidad
	FinSi
	Escribir 'El peso del paquete a despachar es de: ', peso*cantidad,'kg'
	Escribir 'El destino del despacho es: ',destinos[destino]
	Escribir 'El costo del envío es: ',costo_envio
	Escribir 'El total de la compra es: ',total
FinAlgoritmo
