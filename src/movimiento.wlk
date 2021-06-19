import wollok.game.*

object up {

	method mov(head) {
		return head.position().up(1)
	}

}

object down {

	method mov(head) {
		return head.position().down(1)
	}

}

object left {

	method mov(head) {
		return head.position().left(1)
	}

}

object right {

	method mov(head) {
		return head.position().right(1)
	}

}

