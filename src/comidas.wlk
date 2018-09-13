import roque.*

object manzana {

	const property imagen = "manzana.png"

	method energia() = 80

	method teEncontraron() {
		game.removeVisual(self)
		// TODO implementar esto en roque, ya que es responsabilida de roque
		// no está mal pero como que acá hay mucho comportamiento que es responsabilidad
		// de roque
		if (roque.comidaActual() != self) {
			roque.guardarComida(self)
		}
	}

}

object alpiste {

	const property imagen = "alpiste.png"

	method energia() = 5

	method teEncontraron() {
		game.removeVisual(self)
		if (roque.comidaActual() != self) {
			roque.guardarComida(self)
		}
	}

}

