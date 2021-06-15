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
		
		game.addVisualCharacter(snake)
		game.addVisual(banana)
		self.snakeControl()
		game.onTick(1000/snake.speed(), "movimiento", { snake.move()})
		game.whenCollideDo(snake, { fruta => snake.eat(fruta)})
	}

	method snakeControl() {
		keyboard.w().onPressDo{ snake.direction(up)}
		keyboard.s().onPressDo{ snake.direction(down)}
		keyboard.a().onPressDo{ snake.direction(left)}
		keyboard.d().onPressDo{ snake.direction(right)}
	}

}

