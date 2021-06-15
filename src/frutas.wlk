import visuales.*
import wollok.game.*
import snake.*

class Frutas {

	var property position = game.at(0.randomUpTo(game.width()).truncate(0), 0.randomUpTo(game.height()).truncate(0))

}

class Banana inherits Frutas {

	const property energia = 0.2

	method image() = "banana.png"

}

class Apple inherits Frutas {

	const property energia = 0.7

	method image() = "apple.png"

}

class Strawberry inherits Frutas {

	const property energia = 1.5

	method image() = "strawberry.png"

}

