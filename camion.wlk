import cosas.*

object camion {
	const property cosas = #{}
	var property tara = 1000
		
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}
	method descargar(unaCosa) {
		cosas.remove(unaCosa)
	}
	method todoPesoPar(){
		return cosas.all({cosa=>
			cosa.peso().odd()})
	}
	method hayAlgunoQuePesa(unPeso){
		return cosas.any({ cosa =>
			cosa.peso() == unPeso
		})
	}

	method losDelNivel(unNivel){
		return cosas.filter({cosa =>
			cosa.nivel() == unNivel})
	}
	method elDeNivel(unNivel){
		return self.losDelNivel(unNivel).first()
	}

	method pesoCosas(){
		return cosas.sum({ cosa =>
			cosa.peso()})
	}
	method pesoTotal(){
		return self.tara() + self.pesoCosas()
	}
	method excedidoDePeso(){
		return self.pesoTotal() > 2500
	}
	method objetosQueSuperanPeligrosidad(nivel){
		return cosas.filter({cosa =>
			cosa.nivelPeligrosidad() > nivel})
	}
	method objetoMasPeligrososQue(cosa){
		return cosas.filter({
			
		})
	}
}
