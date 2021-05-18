import wollok.game.*
import tanquesito.*
import movimientos.*
import balas.*
import enemigos.*
import muros.*
import levels.*

object carga {

	const property muros = []

	method creacion() {
		
		self.controles()
	}

	method controles() {
		keyboard.up().onPressDo({ tanquesito.cambiarTanque(up)})
		keyboard.down().onPressDo({ tanquesito.cambiarTanque(down)})
		keyboard.left().onPressDo({ tanquesito.cambiarTanque(left)})
		keyboard.right().onPressDo({ tanquesito.cambiarTanque(right)})
		keyboard.space().onPressDo({ tanquesito.ataque()})
	}

}
