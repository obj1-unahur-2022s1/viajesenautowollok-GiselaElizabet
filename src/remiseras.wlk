/*
 * Remiseras: R (se combina return dentro de métodos setter y no se respeta polimorfismo)
 */
import clientes.*
// no es necesario importar objetos del archivo cooperativa

object roxana { 
	// no es necesario utilizar var precioViaje
	// No es correcta la implementación que se pedía para precioViaje(cliente,kms), ya que dentro de un método 
	// que debe ser getter (de consulta), no se debe realizar una asignación de valor
	// a una variable. Te dejo la forma correcta y resumida.
	
	method precioViaje(cliente , kms) = cliente.precioPorKm() * kms

}



object gabriela {
	// no es necesario utilizar var precioViaje
	// No es correcta la implementación que se pedía para precioViaje(cliente,kms), ya que dentro de un método 
	// que debe ser getter (de consulta), no se debe realizar una asignación de valor
	// a una variable. Te dejo la forma correcta y resumida.
	// El método precioViaje() no es correcto. El enunciado indicaba que se debía implementar
	// con 2 parámetros (cliente y kms).
	method precioViaje(cliente , kms) = cliente.precioPorKm() * kms * 1.2
}


object mariela{
	// no es necesario utilizar var precioViaje
	// No es correcta la implementación que se pedía para precioViaje(cliente,kms), ya que dentro de un método 
	// que debe ser getter (de consulta), no se debe realizar una asignación de valor
	// a una variable. Te dejo la forma correcta y resumida.
	// El método precioViaje() no es correcto. El enunciado indicaba que se debía implementar
	// con 2 parámetros (cliente y kms).
	// Bien utilizado el método max() !!
	method precioViaje(cliente, kms) = 50.max(cliente.precioPorKm() * kms)
	
}


object juana {
	// no es necesario utilizar var precioViaje
	// No es correcta la implementación que se pedía para precioViaje(cliente,kms), ya que dentro de un método 
	// que debe ser getter (de consulta), no se debe realizar una asignación de valor
	// a una variable. Te dejo la forma correcta y resumida.
	// El método precioViaje() no es correcto. El enunciado indicaba que se debía implementar
	// con 2 parámetros (cliente y kms).
	// Es innecesario utilizar la condición cliente.esCliente() dentro del método precioViaje(cliente,kms)
	// por lo que destacamos en la corrección de clientes. Te dejo una posible implementación correcta para 
	// ese método y además la forma resumida.
	
    method precioViaje(cliente , kms) = if(kms <= 8)  { 100 } else  { 200 }
	 
}


object lucia {
	// no es necesario utilizar var precioViaje
	// No es correcta la implementación que se pedía para precioViaje(cliente,kms), ya que dentro de un método 
	// que debe ser getter (de consulta), no se debe realizar una asignación de valor
	// a una variable. Te dejo la forma correcta y resumida.
	// Mismo problema con el método reemplazaA(rermisera). No se debe usar return dentro de un
	// método de acción (setter)
	// El método precioViaje() no es correcto. El enunciado indicaba que se debía implementar
	// con 2 parámetros (cliente y kms).
	// El método precioViajeComo(remisera,pasajero,kms) es innecesario. Te dejo una forma de 
	// implementar correctamente el método precioViaje(cliente,kms) que respeta el contrato y 
	// cumple con el polimorfismo

    var reemplazaA 
    
    method reemplazaA()= reemplazaA
    
    method reemplazaA(remisera){
     reemplazaA = remisera
    }
    
    method precioViaje(cliente,kms) = reemplazaA.precioViaje(cliente,kms)
    
 } 


