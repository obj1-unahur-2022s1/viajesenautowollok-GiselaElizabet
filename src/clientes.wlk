import cooperativa.*
object  ludmila {
	var precioPorKm = 18	
	var esCliente= true
	method precioPorKm() = precioPorKm	
	method esCliente() = esCliente
	
}

object anaMaria {	
	var precioPorKm = 0
	var estable= true
	var esCliente= true
	
	method precioPorKm(){
	 if ( self.esEconomicamenteEstable()) {
	  return 30}
	 else {
	  return 25 }
	}
	method esEconomicamenteEstable() = estable  // cómo negar en consola o modificar este método, para probar la segunda rama de precioPorKm
	 		
	method esCliente() = esCliente
	

}

object teresa {
	var precioPorKm = 22
	var esCliente= true
	
	method precioPorKm() = precioPorKm
	
	method esCliente() = esCliente
	
	
}
 object melina {
	var precioPorKm = 0
	var esCadeteDe
    const esCliente= false
	
	
	method esCliente() = esCliente       
	method esCadeteDe()= esCadeteDe
	
	method esCadeteDe(cliente){
		esCadeteDe = cliente
		return esCadeteDe}
		
	method	precioPorKm() = precioPorKm
	
	method precioPorKmComo(cliente) {
		precioPorKm = cliente.precioPorKm() - 3
		return precioPorKm
	  	}
}
