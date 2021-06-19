import wollok.game.*
import movimiento.*
import snake.*
import frutas.*

object carga {

	var property image = "menu.png"
	const banana = new Banana(energia = 4)
	var property position = game.at(0, 0)

	method creacion() {
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
		snake.restart()
		keyboard.enter().onPressDo{ self.creacion()}
		//game.say(head, "puntaje: " + snake.puntos().toString())
	}
	

	method snakeControl() {
		keyboard.up().onPressDo{ head.direction(up)}
		keyboard.down().onPressDo{ head.direction(down)}
		keyboard.left().onPressDo{ head.direction(left)}
		keyboard.right().onPressDo{ head.direction(right)}
	}

}
/*object puntaje {
	var property position = game.at(-1,2)
	var property image = "backgroung.png"
}*/

