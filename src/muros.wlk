import wollok.game.*

/*object Muro {

	var property position


	method crear() {
		game.addVisual(self)
	}

}*/

object muro {
	method agregarBloque(x, y, bloque){
		game.addVisualIn(bloque, game.at(x,y))
	}
}

class Muros{
	method image()
	method impideElPaso() = false
}