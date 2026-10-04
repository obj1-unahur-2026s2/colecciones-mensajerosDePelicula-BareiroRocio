// destinos 
object puenteBrooklyn{
  method elPaquetePuedeSerEntregado(mensajero){
    return mensajero.peso() <= 1000
  }
}
object laMatrix{
  method elPaquetePuedeSerEntregado(mensajero){
    return mensajero.puedeRealizarLlamada()
  }

}
// mensajeros 
object roberto{
  var vehiculo = bicicleta
  var pesoActual = 90
  method cambiarVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
  }
  method cambiarPeso(nuevoPeso){
    pesoActual = nuevoPeso
  }
  method peso(){
    return pesoActual + vehiculo.peso()
  }
  

}
  

object bicicleta{
  method peso()=5
}
object camion{
  var acoplado = 1
  method nuevaCantidadAcoplado(cantidad){
    acoplado = cantidad
  }
  method peso(){
    return acoplado * 500
  }
}

object chuckNorris{
  method peso()=80
  method puedeRealizarLlamada()=true


}

object neo{
  var tieneCredito = true 
  method peso()=0
  method noTieneCredito(){
    tieneCredito = false
  }
  method puedeRealizarLlamada(){
    return tieneCredito
  }
}
// parte 2

object empresaDeMensajeria{
  const mensajeros = #{roberto, chuckNorris, neo}
  method contratarMensajero(mensajero){
    mensajeros.add(mensajero)
  }
  method despedirUnMensajero(mensajero){
    mensajeros.remove(mensajero)
  }
  method esGrande(){
    return mensajeros.size() > 2
  }
  
  method pesoUltimoMensajero(){
    return mensajeros.last().peso()
  }


}
// parte 3 

object paquete{

  var destino = puenteBrooklyn
  var estaPago = false

  method cambiarDestino(nuevoDestino){
    destino = nuevoDestino
  }

  method pagar(){
    estaPago = true
  }

  method puedeSerEntregadoPor(mensajero){
    return destino.elPaquetePuedeSerEntregado(mensajero) and estaPago
  }

  method precio() = 50

}

object paquetito{
    method puedeSerEntregadoPor(mensajero){
    return true
  }

  method estaPago(){
    return true
  }

  method precio() = 0

}



 
object paquetonViajero{
  const destinos = []
  var dineroPagado = 0

  method agregarDestino(destino){
    destinos.add(destino)
  }

  method pagar(dinero){
    dineroPagado += dinero
  }

  method precio(){
    return destinos.size() * 100
  }

  method estaPago(){
    return dineroPagado >= self.precio()
  }

  method puedeSerEntregadoPor(mensajero){
    return destinos.all({ destino => destino.elPaquetePuedeSerEntregado(mensajero) }) and self.estaPago()
  }



}


