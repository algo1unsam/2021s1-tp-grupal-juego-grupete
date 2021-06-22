import visuales.*
import wollok.game.*
import snake.*

class Frutas {

	var property position = game.at(0.randomUpTo(game.width()).truncate(0), 0.randomUpTo(game.height()).truncate(0))
	const property energia = 0

	method bonus() {
	}

	method colision() {
		carga.inverted(false)
		self.bonus()
		snake.eat(self)
	}

}

class Banana inherits Frutas {

	override method energia() = 2

	method image() = "banana.png"

}

class Apple inherits Frutas {

	override method energia() = 1

	method image() = "apple.png"

	override method bonus() {
		snake.speed(snake.speed() * 2)
	}

}

class Strawberry inherits Frutas {

	override method energia() = 1.5

	method image() = "strawberry.png"

	override method bonus() {
		if (snake.eslabones().size() > 2){
		game.removeVisual(snake.eslabones().last())
		snake.eslabones().remove(snake.eslabones().last())
		game.removeVisual(snake.eslabones().last())
		snake.eslabones().remove(snake.eslabones().last())
		}
	}

}

class Orange inherits Frutas {

	override method energia() = 0.5

	method image() = "orange.png"

	override method bonus() {
		carga.inverted(true)
	}

}

