import wollok.game.*

object up {

	method mov(cosa) {
		if (cosa.position().y() < game.height() - 1) {
			return cosa.position().up(1)
		} else {
			return cosa.position()
		}
	}

}

object down {

	method mov(cosa) {
		if (cosa.position().y() > 0) {
			return cosa.position().down(1)
		} else {
			return cosa.position()
		}
	}

}

object left {

	method mov(cosa) {
		if (cosa.position().x() > 0) {
			return cosa.position().left(1)
		} else {
			return cosa.position()
		}
	}

}

object right {

	method mov(cosa) {
		if (cosa.position().x() < game.width() - 1) {
			return cosa.position().right(1)
		} else {
			return cosa.position()
		}
	}

}

