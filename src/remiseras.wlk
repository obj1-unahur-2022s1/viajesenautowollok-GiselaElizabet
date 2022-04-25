
import clientes.*
import cooperativa.*

object roxana { 
	var precioViaje = 0
	method precioViaje()= precioViaje 
	method precioViaje(cliente , kms){
	  precioViaje =(cliente.precioPorKm() * kms)
	  return precioViaje
	}
	
}



object gabriela {
	var precioViaje = 0
	method precioViaje()= precioViaje
	method precioViaje(cliente , kms){
	 precioViaje = (cliente.precioPorKm() * kms * 1.2)
	 return precioViaje
	}
}


object mariela{
	var precioViaje= 0
	method precioViaje()= precioViaje
	method precioViaje(cliente, kms){
		
		precioViaje = 50. max((cliente.precioPorKm() * kms))
		return precioViaje
	}
	
}


object juana {
	var precioViaje = 0
	
	method precioViaje()= precioViaje
	
    method precioViaje(cliente , kms)  {
     if (cliente.esCliente() and (kms <= 8))  {
         precioViaje = 100
	   return  100}
	  
	 else  {
	 	precioViaje=200
	 	return 200}
	 } 
	 
}


object lucia {
	var precioViaje = 0
    var reemplazaA 
    
    method precioViaje() = precioViaje
    
    method reemplazaA()= reemplazaA
    
    method reemplazaA(remisera){
     reemplazaA = remisera
     return reemplazaA}
    
    method precioViajeComo(remisera, pasajero , kms){
     if (pasajero.esCliente()){
       precioViaje = remisera.precioViaje(pasajero , kms)
       return precioViaje}
     else {precioViaje = remisera.precioViaje(melina , kms)
       return precioViaje}
    
    }  
 } 


