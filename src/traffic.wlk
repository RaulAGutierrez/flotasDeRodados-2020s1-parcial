import rodados.*

object trafic {
	var capacidadPasajeros
	var pesoCapacidad
	var velocidadMaxima
	var pesoMotor
	const pesoTrafic = 4000
	
	method interiorComodo() {
		capacidadPasajeros = 5 // Pasajeros
		pesoCapacidad = 700 // Kg
	}
	method interiorPopular() {
		capacidadPasajeros = 12 // Pasajeros
		pesoCapacidad = 1000 // Kg
	}
	method motorPulenta() {
		velocidadMaxima = 130 // Km /h
		pesoMotor = 800 // Kg
	}
	method motorBaraton() {
		velocidadMaxima = 80 // Km /h
		pesoMotor = 500 // Kg
	}  
	method capacidad() { return capacidadPasajeros } // pasajeros
	method velocidadMax() { return velocidadMaxima } // Km/h
	method peso() { return pesoTrafic + pesoMotor + pesoCapacidad } // Kg
	method color() { return colores.blanco() }
}

