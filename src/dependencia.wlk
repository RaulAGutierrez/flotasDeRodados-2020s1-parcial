import rodados.*
import traffic.*

class Dependencia {
	const property flota = []
	var empleados
	
	method setEmpleados(cantidad) { empleados = cantidad }
	
	method agregarAFlota(rodado) {
		flota.add(rodado)
	}
	method quitarDeFlota(rodado) {
		flota.remove(rodado)
	}
	method pesoTotalFlota() {
		return flota.sum( { rodado => rodado.peso() } )
	}
	method estaBienEquipada() {
		return (flota.size() >= 3) and (flota.all( { rodado => rodado.velocidadMax() >= 100 } ))
	}
	method capacidadTotalEnColor(color) {
		return (flota.filter( { rodado => rodado.color() == color })).sum( { rodado=> rodado.capacidad() } )
	}
	method colorDelRodadoMasRapido() {
		return (flota.max( { rodado => rodado.velocidadMax() } ).color())
	}
	method capacidadFaltante() {
		var capacidadFaltante = empleados - (flota.sum( { rodado => rodado.capacidad() } ))
		if (capacidadFaltante < 0) {
			capacidadFaltante = 0
		}
		return capacidadFaltante
	}
	method esGrande() {
		return (empleados >= 40) and (flota.size() >= 5)
	}
}
