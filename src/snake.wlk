import wollok.game.*
import movimiento.*
import frutas.*

class Snake {

	var property x = 2
	var property y = 2
	var property speed = 5
	var property puntos = 0
	var property direction = right
	const property image = "dot.png"
	var property position = game.at(x, y)

	method move() {
		/*if (game.getObjectsIn(self.direction().mov(self)).isEmpty()) {*/
		self.position(self.direction().mov(self))
	}

	method vida() = 1

	method impideElPaso() = true

	method colisiones() {
		game.whenCollideDo(snake, { fruta => snake.eat(fruta)}) // game.addVisual([banana, apple].anyOne())})
	}

	method eat(fruta) {
		speed += fruta.energia()
		puntos += 10
		const banana = new Banana()
		const apple = new Apple()
		const strawberry = new Strawberry()
		game.removeVisual(fruta)
		game.addVisual([ banana, apple, strawberry ].anyOne())
		game.removeTickEvent("movimiento")
		game.onTick(1000/snake.speed(), "movimiento", { snake.move()})
		
	}

}

object snake inherits Snake {

	method reiniciarPuntos() {
		puntos = 0
	}

}

