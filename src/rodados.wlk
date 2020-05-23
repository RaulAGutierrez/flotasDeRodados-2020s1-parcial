class ChevroletCorsa {
	var color
	
	method capacidad() { return 4 } // pasajeros
	method velocidadMax() { return 150 } // Km/h
	method peso() { return 1300 } // Kg
	method color() { return color }
	method setColor(colorCambiado) { color = colorCambiado }	
}

class RenaultKwind {
	var tanqueAdicional = true
	
	method capacidad() {
		var pasajeros = 3
		if (not tanqueAdicional) {
			pasajeros = 4
		}
		return pasajeros
	}
	method velocidadMax() {
		var maxVelocidad = 110 // Km/h
		if (not tanqueAdicional) {
			maxVelocidad = 120 // Km/h
		}
		return maxVelocidad
	}
	method peso() {
		var peso = 1200 // Kg
		if (tanqueAdicional) {
			peso = peso + 150 // Kg
		}
		return peso
	}
	method color() { return colores.azul() }
	method noTieneGas() { tanqueAdicional = not tanqueAdicional }
}

class AutosEspeciales {
	var capacidadPasajeros
	var velocidadMaxima
	var peso
	var color
	
	method capacidad() { return capacidadPasajeros } // pasajeros
	method setCapacidad(pasajeros) { capacidadPasajeros = pasajeros } // numero de pasajeros
	method velocidadMax() { return velocidadMaxima } // Km/h
	method setVelocidad(maxima) { velocidadMaxima = maxima }
	method peso() { return peso } // Kg
	method setPeso(kg) { peso = kg }
	method color() { return color }
	method setColor(colorCambiado) { color = colorCambiado }
}

object colores {
	method verde() { return 'verde' }
	method azul() { return 'azul' }
	method blanco() { return 'blanco' }
	method rojo() { return 'rojo' }
	method beige() { return 'beige'}
}


