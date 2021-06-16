import wollok.game.*

object up {

	method mov(primero, ultimo) {
		if (primero.position().y() < game.height() - 1) {
			return ultimo.position().up(1)
		} else {
			return ultimo.position()
		}
	}

}

object down {

	method mov(primero, ultimo) {
		if (primero.position().y() > 0) {
			return ultimo.position().down(1)
		} else {
			return ultimo.position()
		}
	}

}

object left {

	method mov(primero, ultimo) {
		if (primero.position().x() > 0) {
			return ultimo.position().left(1)
		} else {
			return ultimo.position()
		}
	}

}

object right {

	method mov(primero, ultimo) {
		if (primero.position().x() < game.width() - 1) {
			return ultimo.position().right(1)
		} else {
			return ultimo.position()
		}
	}

}

