/*
 * Clientes: Bien (-) Se usan variables que no son necesarias, y faltan setters.
 */

/* No es necesario importar cooperativa */

object  ludmila {
	// es innecesario utilizar la variable precioPorKm 
	// (el enunciado aclara que es fijo e inamovible) 
	// tampoco haría falta la variable esCliente.
	method precioPorKm() = 18	
}

object anaMaria {	
	// No es necesaria la variable precioPorKm porque no es necesario que el objeto
	// anaMaria la "recuerde". El mismo método de consulta precioPorKm() sabe responder
	// el valor.
	// esCliente tampoco es necesaria ni variable ni método.
	// falta método para cambiar la estabilidad económica de anaMaria, te dejo una
	// forma de hacerlo que sería la ideal.
	var estable= true
	
	method precioPorKm() = if (self.esEconomicamenteEstable()) 30 else 25

	method esEconomicamenteEstable() = estable  // cómo negar en consola o modificar este método, para probar la segunda rama de precioPorKm

	method cambiarEstabilidadEconomica() { estable = not estable }

}

object teresa {
	// var esCliente no es necesaria ni el método de consulta.
	// falta el método para cambiar el precio por Km, te dejo un ejemplo de como hacerlo
	var precioPorKm = 22
	
	method precioPorKm() = precioPorKm
	
	method cambiarPrecioPorKm(nuevoPrecio) { precioPorKm = nuevoPrecio }
	
}
 object melina {
	// melina no necesita recordar el precioPorKm ya que se define por la cliente para la que trabaja.
	// tampoco es necesaria la constante esCliente ni el método esCliente()
	var esCadeteDe
	
	method esCadeteDe()= esCadeteDe
	
	method esCadeteDe(cliente){
		// No se debe utilizar return en métodos que realizan acciones como este caso, 
		// que el propósito es definir de quién es cadete melina. Se explicó en varias 
		// ocasiones que los métodos deben ser getter o setter (consulta o acción), y 
		// en ningún caso (por ahora) se permite combinarlos.
		esCadeteDe = cliente
	}
		
	method	precioPorKm() = esCadeteDe.precioPorKm() - 3
	// es importante respetar el contrato, melina debe saber responder al precioPorKm igual que
	// el resto de los clientes
	
	// No es necesario el método precioPorKmComo(cliente) ya que el objeto melina
	// debe poder recordar de que cliente esCadete, para eso es la variable. 
	
}
