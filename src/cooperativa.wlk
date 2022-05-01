/*
 * Oficina: Bien (-) (combina return dentro de un método setter)
 */
import remiseras.*
import clientes.*

object oficina {
	var remiseraPrimeraOpcion
	var remiseraSegundaOpcion
	
	method remiseraPrimeraOpcion()=remiseraPrimeraOpcion
	
	method remiseraSegundaOpcion()=remiseraSegundaOpcion
	
	method asignarRemiseras(remisera1, remisera2){
		remiseraPrimeraOpcion= remisera1
		remiseraSegundaOpcion= remisera2}
	
    method cambiarPrimerRemiserarPor(remisera){
   		// No se debe combinar getter con setter, según vimos, no está permitido
   		// dentro de un método de acción, realizar un return.
        remiseraPrimeraOpcion= remisera
 	}
  
   
    method cambiarSegundoRemiseraPor(remisera){
   		// No se debe combinar getter con setter, según vimos, no está permitido
   		// dentro de un método de acción, realizar un return.
   	    remiseraSegundaOpcion= remisera
	}
   	    
   method intercambiarRemiseras(){
   		// No es correcto, ya que la forma en que habías implementado
		// al reemplazar las variables se pierde el valor de remiseraPrimerOpcion.
		//Te dejo la forma correcta que consiste en reutilizar el método
		//asignarRemiseras(remisera1,remisera2)
		self.asignarRemiseras(remiseraSegundaOpcion,remiseraPrimeraOpcion)
   }
   method remiseraElegidaParaViaje(cliente, kms) =
   	// se podría haber implementado de forma más simple y resumida, te dejo una sugerencia utilizando
   	// un método auxiliar que facilita el entendimiento.
		if (self.difPrecio(cliente,kms) > 30) remiseraSegundaOpcion else remiseraPrimeraOpcion

	method difPrecio(cliente,kms) = 
		remiseraPrimeraOpcion.precioViaje(cliente,kms) - remiseraSegundaOpcion.precioViaje(cliente,kms)
      
      
}
