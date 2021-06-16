import wollok.game.*
import movimiento.*
import frutas.*

object snake {

	// var property x = 2
	// var property y = 2
	var property speed = 5
	var property puntos = 0
	const property eslabones = [ eslabon, eslabon1 ]
	var property direction = right

	// const property image = "dot.png"
	// var property position = game.at(x, y)
	method move() {
		/*if (game.getObjectsIn(self.direction().mov(self)).isEmpty()) {*/
		/*self.position*/ self.direction().mov(eslabones.first(), eslabones.last())
		
	}


/*method eat(fruta) {
 * 	speed += fruta.energia()
 * 	puntos += 10
 * 	const banana = new Banana()
 * 	const apple = new Apple()
 * 	const strawberry = new Strawberry()
 * 	const dot_ = new SnakeDot()
 * 	dots.add(dot_)
 * 	game.addVisualIn(dot_, dots.last().position())
 * 	game.removeVisual(fruta)
 * 	game.addVisual([ banana, apple, strawberry ].anyOne())
 * 	game.removeTickEvent("movimiento")
 * 	game.onTick(1000 / snake.speed(), "movimiento", { snake.move()})
 }*/
}

class Eslabon {

	var property x = 2
	var property y = 2
	const property image = "dot.png"
	var property position = game.at(x, y)

}

const eslabon = new Eslabon()

const eslabon1 = new Eslabon(x = 1)

