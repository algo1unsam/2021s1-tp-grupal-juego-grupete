import wollok.game.*

class Pacman {
	
	var property position = new Position(x = 2, y = 2)
	var image	

	method image() {
		//imagen del pacman
	}
	
	method moverPacman(apunta) {
	
	}

	
	
}

object pacman1 inherits Pacman {

	override method moverPacman(apunta) {
		if (game.getObjectsIn(apunta.mov(self)).isEmpty()) {
			self.position(apunta.mov(self))
		}
		image = "pacman1" + apunta.movString() + ".png"

	}

}

object pacman2 inherits Pacman {

	
		override method moverPacman(apunta) {
			if (game.getObjectsIn(apunta.mov(self)).isEmpty()) {
			self.position(apunta.mov(self))
			}
		image = "pacman2" + apunta.movString() + ".png"

	}
}