/* 
 * Introducir Roque, el entrenador, que tendrá las siguientes capacidades:
 * Al encontrar una comida, Roque la levanta y se la guarda. Si ya tenía una suelta la anterior.
 * Al encontrar a pepita, Roque le entrega la comida que tiene y pepita se la come. Luego, hacer aparecer de nuevo la comida en un lugar al azar del tablero.
*/
import pepita.*
import comidas.*

object roque 
{
	var almacenarComida = 1
	var comidaActual = ninguna
	
	method guardarComida(comida)
	{
		almacenarComida = 0
		if (comidaActual != comida)
		{
			comidaActual = comida
		}
	}
	
	method encontrarPepita()
	{
		pepita.come(comidaActual)
		almacenarComida = 1
		comidaActual = ninguna
	}
}
