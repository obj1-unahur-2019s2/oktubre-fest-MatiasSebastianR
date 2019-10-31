class Marca {
	var property contenidoLupulo
	var property paisOrigen
}

class Rubia inherits Marca {
	var property graduacionAlcoholica
}

class Negra inherits Marca {
		
	method graduacionAlcoholica() { return (graduacionReg.graduacionReglamentaria()).min(contenidoLupulo*2)  }
}

class Roja inherits Negra {
	
	override method graduacionAlcoholica() {
		return super() *1.25
	}
}

object graduacionReg{
	var property graduacionReglamentaria
}

class Jarras {
	var property litros
	var property marca
	 
//	method agregarMarca(cerve) { marca.add (cerve)}
	method nivelAlcohol() { return (litros* marca.graduacionAlcoholica()) /100}
}

class Personas {
	var property peso
	var jarras = []
	var property leGustaMusicaTradicional = false
	var property nivelDeAguante
	
	method agregarJarra(cerve) { jarras.add(cerve)}
		
	method totalAlcohol() { return jarras.sum({ cosa => cosa.nivelAlcohol() }) }
		
	method estaEbria() { return self.totalAlcohol() *peso > nivelDeAguante }
	
	method leGusta(marca)

}

class Aleman inherits Personas {
	
	override method leGusta(marca) { return true }
}

class Belga inherits Personas {
	
	override method leGusta(marca) { return marca.contenidoLupulo() > 4 }
}

class Checo inherits Personas{
	
	override method leGusta(marca) { return marca.graduacionAlcoholica() > 8 } 
}

class CarpasCerveceras {
	
	var property limiteDePersonas
	var property BandaMusicaTradicional = false
	var jarras = []
	
}
//Carpas
//
//Las carpas cerveceras tienen:
//
//    un límite de gente admitida,
//    algunas tienen una banda para tocar música tradicional (esto debe indicarse para cada una),
//    y por supuesto que todas venden jarras de cerveza.
//
//Cada carpa vende cerveza de únicamente una marca (que depende de cada carpa).



