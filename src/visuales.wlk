import wollok.game.*
import movimiento.*
import snake.*
import frutas.*

object carga {

	var property image = "menu.png"
	const banana = new Banana()
	var property position = game.at(0, 0)
	var property inverted = false

	method creacion() {
		if (game.hasVisual(puntaje)) {
			game.removeVisual(puntaje)
		}
		game.removeVisual(self)
		game.addVisual(head)
		game.addVisual(eslabon)
		game.addVisual(banana)
		self.snakeControl()
		snake.avanzar()
		game.onCollideDo(head, { objeto => objeto.colision()})
	}

	method menu() {
		game.addVisual(self)
		keyboard.enter().onPressDo{ self.creacion()}
	}

	method gameOver() {
		game.clear()
		self.image("gameover.png")
		game.addVisual(self)
		game.addVisual(puntaje)
		game.say(puntaje, "puntaje: " + snake.puntos().toString())
		snake.restart()
		keyboard.enter().onPressDo{ self.creacion()}
	}

	method snakeControl() {
		keyboard.up().onPressDo{ if (inverted) {
				head.direction(down)
			} else head.direction(up)
		}
		keyboard.down().onPressDo{ if (inverted) {
				head.direction(up)
			} else head.direction(down)
		}
		keyboard.left().onPressDo{ if (inverted) {
				head.direction(right)
			} else head.direction(left)
		}
		keyboard.right().onPressDo{ if (inverted) {
				head.direction(left)
			} else head.direction(right)
		}
	}

}

object puntaje {

	var property position = game.at(14, 10)
	var property image = "snake.png"

}

