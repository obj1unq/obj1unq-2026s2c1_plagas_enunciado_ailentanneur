class Elemento{
    method esBuena()

    method esAtacada(unaPlaga){
        unaPlaga.efectoDeAtaque()
    }
}

class Hogar inherits Elemento{
    var property nivelDeMugre = 0
    var property confort = 0

    override method esBuena(){
       return (confort / 2) >= nivelDeMugre
    }

    override method esAtacada(unaPlaga){
        nivelDeMugre += unaPlaga.nivelDeDaño()
        super(unaPlaga)
    }
}
class Huerta inherits Elemento{
    var property capacidad = 0
    var property nivelDeProduccion = produccion.nivelDelMes()

    override method esBuena(){
       return capacidad >  nivelDeProduccion

    }

    override method esAtacada(unaPlaga){
        if (unaPlaga.transmitenEnfermedad()){
            capacidad -= (unaPlaga.nivelDeDaño() * 0.1) + 10
    }
        else capacidad -= (unaPlaga.nivelDeDaño() * 0.1)
        super(unaPlaga)
    }
}
class Mascota inherits Elemento{
    var property  nivelDeSalud = 0

    override method esBuena(){
        return nivelDeSalud > 250 
    }   

    override method esAtacada(unaPlaga) {
        if(unaPlaga.transmitenEnfermedad()){
            nivelDeSalud -= unaPlaga.nivelDeDaño()
        }
        super(unaPlaga)
    }

}
object barrio{
    const  elementos = []

    method elementos(){
        return elementos
    }

    method agregarElemento(unElemento){
        elementos.add(unElemento)
    }

    method esCopado(){
    return  elementos.count({elemento => elemento.esBuena()}) > 
            elementos.count({elemento => !elemento.esBuena()})
    }

}
object produccion{
    var property nivelDelMes = 0

}