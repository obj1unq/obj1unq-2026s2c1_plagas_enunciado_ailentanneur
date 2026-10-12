class Plaga{
    var property cantDePoblacion = 0

    method transmitenEnfermedad(){
        return cantDePoblacion >= 10
    }
    method nivelDeDaño()

   method efectoDeAtaque(){
        cantDePoblacion += cantDePoblacion * 0.1
   }

    method poblacion(){
        return cantDePoblacion
    }
   

}

class Cucaracha inherits Plaga{
    var property peso = 0
    method pesoPromedio(){
    return (peso * cantDePoblacion) / cantDePoblacion

    }
    override method nivelDeDaño(){
        return cantDePoblacion / 2
    }
    override method transmitenEnfermedad(){
        return self.pesoPromedio() >= 10
    }
    override method efectoDeAtaque(){
        super()
        self.pesoPromedio() + 2
    }

}
class Pulga inherits Plaga{
    override method nivelDeDaño(){
        return self.cantDePoblacion() * 2
    }

}

class Garrapata inherits Plaga{
    override method nivelDeDaño(){
       return  self.cantDePoblacion() * 2
    }
    override method efectoDeAtaque(){
        cantDePoblacion += cantDePoblacion * 0.2
    }
}

class Mosquito inherits Plaga{
    override method nivelDeDaño(){
        return self.cantDePoblacion()
    }
    
    override method transmitenEnfermedad() {
      return super() && self.cantDePoblacion() % 3 == 0
    }  

}
