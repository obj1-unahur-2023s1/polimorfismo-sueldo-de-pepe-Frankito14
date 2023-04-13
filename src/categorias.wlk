object gerente {
	method sueldoNeto()= 10000
}

object cadete {
	method sueldoNeto() = 15000
}

object desempleado {
	method sueldoNeto() = 0
}

object vendedor{
	var hayMuchasVentas = false
	method sueldoNeto() = if(not hayMuchasVentas) return 20000 else return 20000*1.25
	method activarAumentoPorMuchasVentas(){hayMuchasVentas = true}
	method desactivarAumentoPorMuchasVentas(){hayMuchasVentas = false}
}

object medioTiempo{
	var categoriaBase
	method setCategoriaBase(categoria){categoriaBase = categoria}
	method sueldoNeto() = categoriaBase.sueldoNeto() / 2
}