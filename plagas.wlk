class Plaga{
    var property cantDePoblacion = 0

    method transmitenEnfermedad(){
        cantDePoblacion >= 10
    }
    method nivelDeDaño()

    method ataque()

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
        self.pesoPromedio() >= 10
    }

}
class Pulga inherits Plaga{
    override method nivelDeDaño(){
        self.cantDePoblacion() * 2
    }

}

class Garrapata inherits Plaga{
    override method nivelDeDaño(){
        self.cantDePoblacion() * 2
    }
}

class Mosquito inherits Plaga{
    override method nivelDeDaño(){
        return self.cantDePoblacion()
    }
    
    override method transmitenEnfermedad() {
      super() % 3 == 0
    }  

}
