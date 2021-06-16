import wollok.game.*

object up {

	method mov(head) {
		if (head.position().y() < game.height() - 1) {
			return head.position().up(1)
		} else {
			return head.position()
		}
	}

}

object down {

	method mov(head) {
		if (head.position().y() > 0) {
			return head.position().down(1)
		} else {
			return head.position()
		}
	}

}

object left {

	method mov(head) {
		if (head.position().x() > 0) {
			return head.position().left(1)
		} else {
			return head.position()
		}
	}

}

object right {

	method mov(head) {
		if (head.position().x() < game.width() - 1) {
			return head.position().right(1)
		} else {
			return head.position()
		}
	}

}

