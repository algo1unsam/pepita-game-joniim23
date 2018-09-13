/* 
 * Introducir Roque, el entrenador, que tendrá las siguientes capacidades:
 * Al encontrar una comida, Roque la levanta y se la guarda. Si ya tenía una suelta la anterior.
 * Al encontrar a pepita, Roque le entrega la comida que tiene y pepita se la come. 
 * Luego, hacer aparecer de nuevo la comida en un lugar al azar del tablero.
 */
import pepita.*
import comidas.*

object roque {

	var property comidaActual = null
	var property posicion = game.at(5, 7)

	method imagen() = "roque.png"

	// TODO en lugar de usar este mensaje podes usar comidaActual(comida)
	// que ya lo tenes ya que lo marcaste como property, entonces este no te haría falta
	method guardarComida(comida) {
		comidaActual = comida
	}

	// TODO ojo con este método porque es polimórfico
	// fijate después de implementar el collide
	method encontrarPepita() {
		pepita.come(comidaActual)
		game.addVisualIn(comidaActual, game.at(5, 5))
		comidaActual = null
	}

	// TODO idem anterior, hay que ver desde donde se llaman para terminar de ver como quedan
	method contactoCon(objeto) {
		objeto.teEncontraron()
	}

}

