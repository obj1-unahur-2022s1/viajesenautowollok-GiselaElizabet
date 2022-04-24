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
        remiseraPrimeraOpcion= remisera
        return remiseraPrimeraOpcion}
  
   
   method cambiarSegundoRemiseraPor(remisera){
   	    remiseraSegundaOpcion= remisera
   	    return  remiseraSegundaOpcion}
   	    
   method intercambiarRemiseras(){
   	 remiseraPrimeraOpcion = remiseraSegundaOpcion  
   	 remiseraSegundaOpcion =  remiseraPrimeraOpcion
   }
   method remiseraElegidaParaViaje(cliente, kms){
   	 if((remiseraSegundaOpcion.precioViaje(cliente , kms) < remiseraPrimeraOpcion.precioViaje(cliente , kms)) &&
          ((remiseraPrimeraOpcion.precioViaje(cliente , kms)- remiseraSegundaOpcion.precioViaje(cliente , kms)) > 30)){
         return remiseraSegundaOpcion }
          
     else {return remiseraPrimeraOpcion}    
      
     } 
      
      
}
