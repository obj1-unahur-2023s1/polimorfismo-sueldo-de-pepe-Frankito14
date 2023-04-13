object bonoPorcentaje{
	method efectivo(empleado) = empleado.getSueldoNeto()*0.1 
}

object bonoFijo{
	method efectivo(empleado) = 80
}

object bonoPresentismo{
	method efectivo(empleado){
		if(empleado.getFaltas()== 0) return 100
		else if (empleado.getFaltas() == 1) return 50
		else return 0
	}
}

object bonoNulo{
	method efectivo(empleado) = return 0
}