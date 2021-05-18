import wollok.game.*
import movimiento.*
import pacman1.*

object carga {

	const property muros = []

	method creacion() {
		
		self.controles()
	}

	method controles() {
		keyboard.up().onPressDo({ pacman1.moverPacman(up)})
		keyboard.down().onPressDo({ pacman1.moverPacman(down)})
		keyboard.left().onPressDo({ pacman1.moverPacman(left)})
		keyboard.right().onPressDo({ pacman1.moverPacman(right)})
	}

}
