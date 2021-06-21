import wollok.game.*
import movimiento.*
import frutas.*
import visuales.*

object snake {

	var property speed = 5
	var property puntos = 0
	var property eslabones = [ head, eslabon ]
	var property ultimaPosicion = 0

	method eat(fruta) {
		speed += fruta.energia()
		puntos += 10 * fruta.energia()
		const banana = new Banana()
		const apple = new Apple()
		const strawberry = new Strawberry()
		const orange = new Orange()
		snake.agregarEslabon()
		game.removeVisual(fruta)
		game.addVisual([ banana, apple, strawberry, orange ].anyOne())
		game.removeTickEvent("movimiento")
		self.avanzar()
	}

	method avanzar() {
		game.onTick(1000 / self.speed(), "movimiento", { eslabones.reverse().forEach({ eslabon => eslabon.movimiento()})})
	}

	method agregarEslabon() {
		const nuevoEslabon = new Eslabon(position = eslabones.last().position(), orden = eslabones.size())
		eslabones.add(nuevoEslabon)
		game.addVisual(nuevoEslabon)
	}

	method restart() {
		self.eslabones([ head, eslabon ])
		head.position(game.at(2, 2))
		eslabon.position(game.at(1, 2))
		self.speed(5)
		self.puntos(0)
		head.restartDirection()
		carga.inverted(false)
	}

}

object head inherits Eslabon {

	var property direction = right

	override method movimiento() {
		self.position(self.direction().mov(self))
		if (self.position().x() >= game.width() or self.position().x() < 0 or self.position().y() >= game.height() or self.position().y() < 0) {
			carga.gameOver()
		}
	}

	method direction(direccion) {
		if (direction == right and direccion != left or direction == left and direccion != right or direction == up and direccion != down or direction == down and direccion != up) {
			direction = direccion
		}
	}

	method restartDirection() {
		direction = right
	}

}

class Eslabon {

	var property x = 2
	var property y = 2
	var property position = game.at(x, y)
	const property image = "dot.png"
	var property orden = 0

	method movimiento() {
		self.position(snake.eslabones().get(orden - 1).position())
	}

	method colision() {
		carga.gameOver()
	}

}

const eslabon = new Eslabon(position = game.at(1, 2), orden = 1)

