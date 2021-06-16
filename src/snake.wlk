import wollok.game.*
import movimiento.*
import frutas.*

object snake {

	var property speed = 5
	var property puntos = 0
	const property eslabones = [ head ]
	var property direction = right

	method eat(fruta) {
		speed += fruta.energia()
		puntos += 10
		const banana = new Banana()
		const apple = new Apple()
		const strawberry = new Strawberry()
		const eslabon_ = new Eslabon()
		//eslabones.add(eslabon_)
		eslabon_.add(eslabones, eslabon_)
		game.addVisual(eslabon_)
		game.removeVisual(fruta)
		game.addVisual([ banana, apple, strawberry ].anyOne())
		game.removeTickEvent("movimiento")
		self.avanzar()
	}

	method avanzar() {
		game.onTick(1000 / self.speed(), "movimiento", { head.move()})
	}

}

object head inherits Eslabon {

	override method x() = 2

	override method y() = 2

	method move() {
		/*if (game.getObjectsIn(self.direction().mov(self)).isEmpty()) {*/
		self.position(self.direction().mov(self))
	}

}

class Eslabon {

	var property position = game.at(x, y)
	var property direction = right
	var property x = 0
	var property y = 0
	const property image = "dot.png"
	var property ultimaPosicion = 0

	method add(eslabones, eslabon) {
		eslabones.add(eslabon)
		if (eslabones.isEmpty()) {
			head.position()
			game.addVisual(eslabon)
		} else {
			ultimaPosicion = eslabones.last().position()
			game.addVisual(eslabon)
		}
	}

	/*method cambioPosicion(newx, newy) {
		x = newx
		y = newy
	}*/

/*method move(eslabones) {
 * 	eslabones.forEach({ eslabon => eslabon.position() =eslabon.})
 * 	}
 */
}

