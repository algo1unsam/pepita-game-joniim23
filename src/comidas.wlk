import roque.*

object manzana {
	const property imagen = "manzana.png"
	method energia() = 80
	
	method teEncontraron()
	{
		game.removeVisual(self)
		
		if (roque.comidaActual() != self) {	roque.guardarComida(self) }
	}
}

object alpiste {
	const property imagen = "alpiste.png"
	method energia() = 5
	
	method teEncontraron()
	{
		game.removeVisual(self)
		
		if (roque.comidaActual() != self) {	roque.guardarComida(self) }
	}
}