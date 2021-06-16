import wollok.game.*
import movimiento.*
import snake.*
import frutas.*

class Visual {

// var property image
// var property position = game.origin()
}

object carga {

	const banana = new Banana(energia = 4)
	const property muros = []

	method creacion() {
		game.addVisual(head)
			// game.addVisual(eslabon1)
		game.addVisual(banana)
		self.snakeControl()
		snake.avanzar()
		game.whenCollideDo(head, { fruta => snake.eat(fruta)})
	}

	method snakeControl() {
		keyboard.up().onPressDo{ head.direction(up)}
		keyboard.down().onPressDo{ head.direction(down)}
		keyboard.left().onPressDo{ head.direction(left)}
		keyboard.right().onPressDo{ head.direction(right)}
	}

}

