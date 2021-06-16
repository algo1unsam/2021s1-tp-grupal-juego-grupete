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
		game.addVisual(eslabon)
		game.addVisual(eslabon1)
		game.addVisual(banana)
		self.snakeControl()
		game.onTick(1000 / snake.speed(), "movimiento", { snake.move()})
		//game.whenCollideDo(snake.eslabones().first(), { fruta => snake.eat(fruta)})
	}

	method snakeControl() {
		keyboard.up().onPressDo{ snake.direction(up)}
		keyboard.down().onPressDo{ snake.direction(down)}
		keyboard.left().onPressDo{ snake.direction(left)}
		keyboard.right().onPressDo{ snake.direction(right)}
	}

}

