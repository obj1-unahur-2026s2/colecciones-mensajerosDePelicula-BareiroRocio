// destinos 
object paquete{
  method puedeLLegarAdestino(destino, mensajero){
    return 
  }
  method elPaqueteEstaPago(mensajero){
    return 
  }
}
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

