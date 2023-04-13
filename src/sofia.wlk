import bonos.*
import categorias.*

object sofia{
	var cargo = desempleado
	var faltas = 0
	var bonoResultados = bonoNulo
	var bonoPresentismo = bonoNulo

	method setCargo(nuevoCargo){cargo = nuevoCargo}
	method getCargo() = cargo
	
	method getSueldoNeto() = cargo.sueldoNeto()*1.3
	method sueldoTotal() = self.getSueldoNeto() + self.getBonoResultados()
	
	method getFaltas() = faltas
	method setFaltas(cantidadFaltas){faltas = cantidadFaltas}
	
	method darBonoPresentismo(bono){bonoPresentismo = bono}
	method darBonoResultados(bono){bonoResultados = bono}
	
	method getBonoResultados() = bonoResultados.efectivo(self)
	method getBonoPresentismo() = bonoPresentismo.efectivo(self)
	
	
}